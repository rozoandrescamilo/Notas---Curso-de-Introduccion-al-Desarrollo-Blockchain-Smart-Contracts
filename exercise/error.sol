// SPDX-License-Identifier: GPL-3.0
 pragma solidity >=0.7.0 <0.9.0;
 
 contract asset {
    string public state = 'onSale';

    //Error que define como parametro los valores relevantes 
    error StateNotDefined(uint unit);

    function changeState(uint newState) public {
        //paramtro condicional y parametro mensaje de Error
        require(newState == 0 || newState == 1, 'This state is not defined');
        if(newState == 0){
            state = 'onSale';
        }else if(newState == 1){
            state = 'notForSale';
        } else {
            //revert lanza el error 
            revert StateNotDefined(newState);
        }
    }
 }