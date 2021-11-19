// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7 <0.9.0;

contract Sum {
    int number = 100;
    function sum(int a, int b) public pure returns(int result){
        result = a + b + number;
    }
}
