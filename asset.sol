// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7 <0.9.0;

contract Asset {
    string name = "Platzicoin";
    function getName() public view returns (string memory){
        return name;
    }
}
