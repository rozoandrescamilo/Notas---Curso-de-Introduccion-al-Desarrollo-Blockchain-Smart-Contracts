// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Permission {
    address private owner;
    string public projectName = "Platzi";

    //Guarda la dirección de quien despliega el contrato como owner
    constructor() {
        owner = msg.sender;
    }

    //Valida que el que puede cambiar el nombre del proyecto es el owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can change the project name"); // require tiene un parametro y un mensaje al usuario
        //la función es insertada en donde aparece este símbolo
        _;
    }

    //Solo el owner puede cambiar el nombre del proyecto onlyOwner
    function changeProjectName(string memory _projectName) public onlyOwner {
        projectName = _projectName;
    }
}
