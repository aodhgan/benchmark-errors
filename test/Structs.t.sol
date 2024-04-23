// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Structs} from "../src/Structs.sol";
import "../src/Constants.sol";


contract StructTest is Test {
    Structs public structsContract;

    function setUp() public {
        structsContract = new Structs();
    }

    function test_LargeStructPassing() public {
        structsContract.passLargeStruct();
        // costs 1138574 gas
    }

    function test_SmallStructPassing() public {
        structsContract.passSmallStruct();
        // costs 12773 gas
    }

    function test_passLargePopulatedStruct() public {
        structsContract.passLargePopulatedStruct();
        // costs 1138642 gas
    
    }

    function test_passLargeStructToLib() public {
        structsContract.passLargeStructToLib();
        // costs 1136459 gas        
    }


}
