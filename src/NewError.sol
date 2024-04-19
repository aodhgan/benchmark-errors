// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./Constants.sol";

contract NewError {
    

    function newErrorType(uint256 newNumber) public {
        if (newNumber == 0) {
            revert Error1();
        }
    }
}
