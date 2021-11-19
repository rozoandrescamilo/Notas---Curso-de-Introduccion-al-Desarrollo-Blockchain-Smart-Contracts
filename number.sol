// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Number {
    //Public function
    function getNumber() public returns (int number){
        number = 1948;
    }
    function changeNumber() public returns (int number){
        number = getNumber() * -1;
    }
}