// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {TokenHarness, Token} from "../src/harness/Example.sol";



contract HarnessTest is Test {
    TokenHarness public harness;
    Token public token;

    function setUp() public {
        harness = new TokenHarness();
        token = new Token();
    }

    function test_Mint() public {
        // deployer (admin) can mint tokens directly 
        token.mint();
        // or via harness
        harness.mint();
    }

    function test_ClosedMint() public { 
        vm.startPrank(address(1));
        vm.deal(address(1), 1 ether);
        vm.expectRevert();
        token.mint();

        // but can mint from harness
        harness.mint();
    }


}
