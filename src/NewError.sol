// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract NewError {
    error Error1();

    function newErrorType(uint256 newNumber) public {
        if (newNumber == 0) {
            revert Error1();
        }
    }
}
