// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Harness} from "../src/harness/Example.sol";



contract HarnessTest is Test {
    Harness public harness;

    function setUp() public {
        harness = new Harness();
        
    }

    function test_Mint() public { 
        harness.mint();
    }


}
