// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract OldError {
    function oldErrorType(uint256 newNumber) public {
        require(newNumber != 0, "Error1");
    }
}
