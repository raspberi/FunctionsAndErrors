// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

// REQUIREMENTS
// For this project, write a smart contract that implements the require(), assert() and revert() statements.

contract ReqAssRev {

    function withdraw (uint _balance, uint _amount) public pure returns (uint) {

        assert(_balance > 0);
        
        require(_amount > 0, "Amount to be withdrawn must be greater than 0!");
        
        if (_balance < _amount){
            revert("Balance must be greater than amount to be withdrawn!");
        }

        return _balance -= _amount;

    }

}
