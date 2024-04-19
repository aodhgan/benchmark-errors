// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {NewError} from "../src/NewError.sol";
import {OldError} from "../src/OldError.sol";
import "../src/Constants.sol";


contract ErrorTest is Test {
    NewError public newErrorContract;
    OldError public oldErrorContract;   

    function setUp() public {
        newErrorContract = new NewError();
        oldErrorContract = new OldError();
    }

    function test_NewError() public {
        vm.expectRevert(Error1.selector);
        newErrorContract.newErrorType(0);
    }

    function test_OldError() public {
        vm.expectRevert("Error1");
        oldErrorContract.oldErrorType(0);
    }
}
