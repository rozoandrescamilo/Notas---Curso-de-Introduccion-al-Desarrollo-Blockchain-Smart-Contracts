// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7 <0.9.0;

contract variables {
    uint public age;
    int public number;
    string public firstName;
    bool public isDeveloper;
    address public wallet;
    uint public valueWei;
    uint public valueGas;
    
    // Constructor va a Inicializar las variables de estado
    constructor(uint _age, int _number, string memory _firstName, bool _isDeveloper) payable{
        age = _age;
        number = _number;
        firstName = _firstName;
        isDeveloper = _isDeveloper;
        wallet = msg.sender; // Dirección del remitente 
        valueWei = msg.value; // Número de wei enviado 
        valueGas = tx.gasprice; // Costo en gas de la transacción 
    }
}

