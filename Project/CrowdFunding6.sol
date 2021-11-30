// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

//Se crea contrato y se asignan variables de estado
contract CrowdFunding {

    enum FundraisingState { Opened, Closed } //Se definen los posibles estados del proyecto
        
    struct Project { //Se define el struct
        string id; //Referencia del proyecto
        string name; //Nombre actual del proyecto
        string description; 
        address payable author; //Autor o representante del proyecto
        FundraisingState state;
        uint funds; //Para almacenar fondos
        uint fundraisingGoal; //Define cuanto se espera ganar con la ronda de fundraising
    }

    Project public project; //Define la variable pública como project

    //Parametros de identificador de proyecto y el valor
    event ProjectFunded(string projectId, uint256 value);

    event ProjectStateChanged(string id, FundraisingState state);
    
    //Para quien desplegue el contrato pueda asignar valor inicial a las variables
    constructor(string memory _id, string memory _name, string memory _description, uint256 _fundraisingGoal) {
        project = Project(_id, _name, _description, payable(msg.sender), FundraisingState.Opened, 0, _fundraisingGoal);
    } // Se asigna el valor de la variable project con cada propiedad
    
    //Modificador que valida que la variable de estado de autor es igual a la dirección de quien llama la función
    modifier isAuthor() {
        require(project.author == msg.sender, "You need to be the project author");
        _;
    }

    //Modificador que valida que la variable de estado de autor es diferente a la dirección de quien llama la función
    modifier isNotAuthor() {
        require(project.author != msg.sender, "As author you can not fund your own project");
        _;
    }
    //Para que cualquiera la pueda ver y enviar Ether sin problema
    function fundProject() public payable isNotAuthor{ //Autor no puede aportar a su propio proyecto
        require(project.state != FundraisingState.Closed, "The project can not receive funds"); //Si state = 0 no recibe más fondos
        require(msg.value > 0, "Fund value must be greater than 0"); //Si el valor enviado por usuario es mayor a cero
        project.author.transfer(msg.value); //Para transferir el valor de ether dado por el usuario al autor (wei)
        project.funds += msg.value; //Se agrega a los fondos el valor recibido
        emit ProjectFunded(project.id, msg.value); //Cantidad en wei que recibió el proyecto
    }

    //Recibe un nuevo estado, se guarda variable newState para optimizar gas usado en la llamada
    function changeProjectState(FundraisingState newState) public isAuthor{ //Solo autor es quien modifica
        require(project.state != newState, "New state must be different");//Si el estado actual es diferente del nuevo estado
        project.state = newState;
        emit ProjectStateChanged(project.id, newState); //Identificador del proyecto y su estado
    }
}