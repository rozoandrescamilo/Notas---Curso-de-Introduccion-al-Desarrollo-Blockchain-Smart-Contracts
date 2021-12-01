// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7 <0.9.0;

contract Fund {
	//Payable function
    function sendEther(address payable receiver) public payable{
      receiver.transfer(msg.value);
    }
}

