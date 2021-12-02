// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//Se crea contrato y se asignan variables de estado
contract CrowdFunding {

    enum FundraisingState { Opened, Closed } //Se definen los posibles estados del proyecto

    struct Contribution { //Struct que define contributions
        address contributor; //Almacena la dirección de aportante
        uint256 value; //Valor de ether contribuido al proyecto
    }   

    struct Project { //Se define el struct
        string id; //Referencia del proyecto
        string name; //Nombre actual del proyecto
        string description; 
        address payable author; //Autor o representante del proyecto
        FundraisingState state;
        uint funds; //Para almacenar fondos
        uint fundraisingGoal; //Define cuanto se espera ganar con la ronda de fundraising
    }

    Project[] public projects; //Define la variable pública como projects y como un array
    
    mapping(string => Contribution[]) public contributions; //Recibe una llave string (Id) y asigna un valor de tipo array

    event ProjectCreated(string projectId, string name, string description, uint256 fundraisingGoal);

    //Parametros de identificador de proyecto y el valor
    event ProjectFunded(string projectId, uint256 value);

    event ProjectStateChanged(string id, FundraisingState state);
    
    //Modificador que valida que la variable de estado de autor es igual a la dirección de quien llama la función
    modifier isAuthor(uint256 projectIndex) {
        require(projects[projectIndex].author == msg.sender, "You need to be the project author");
        _;
    }

    //Modificador que valida que la variable de estado de autor es diferente a la dirección de quien llama la función
    modifier isNotAuthor(uint256 projectIndex) {
        require(projects[projectIndex].author != msg.sender, "As author you can not fund your own project");
        _;
    }

    //Recibe los mismos datos del constructor y se valida que el objetivo a fondear sea mayor a 0
    function createProject(string calldata id, string calldata name, string calldata description, uint256 fundraisingGoal) public {
        require(fundraisingGoal > 0, "fundraising goal must be greater than 0");
        Project memory project = Project( id, name, description, payable(msg.sender), FundraisingState.Opened, 0, fundraisingGoal);
        projects.push(project); //variable se agrega a array del proyecto
        emit ProjectCreated(id, name, description, fundraisingGoal); //Evento que informa que se creó nuevo proyecto
    }


    //Para que cualquiera la pueda ver y enviar Ether sin problema
    function fundProject(uint256 projectIndex) public payable isNotAuthor(projectIndex) { //Autor no puede aportar a su propio proyecto
        Project memory project = projects[projectIndex]; //Trae los datos del proyecto al que quiera aportar
        require(project.state != FundraisingState.Closed, "The project can not receive funds"); //Si state = 0 no recibe más fondos
        require(msg.value > 0, "Fund value must be greater than 0"); //Si el valor enviado por usuario es mayor a cero
        project.author.transfer(msg.value); //Para transferir el valor de ether dado por el usuario al autor (wei)
        project.funds += msg.value; //Se agrega a los fondos el valor recibido
        projects[projectIndex] = project;
        //Llave es el Id y el valor es el nuevo elemento contribution para el array
        contributions[project.id].push(Contribution(msg.sender, msg.value));
        emit ProjectFunded(project.id, msg.value); //Cantidad en wei que recibió el proyecto
    }

    //Recibe un nuevo estado, se guarda variable newState para optimizar gas usado en la llamada
    function changeProjectState(FundraisingState newState, uint256 projectIndex) public isAuthor(projectIndex) { //Solo autor es quien modifica
        Project memory project = projects[projectIndex]; //Trae los datos del proyecto al que quiera aportar
        require(project.state != newState, "New state must be different");//Si el estado actual es diferente del nuevo estado
        project.state = newState;
        emit ProjectStateChanged(project.id, newState); //Identificador del proyecto y su estado
    }
}