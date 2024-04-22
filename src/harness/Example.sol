// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {console} from "forge-std/Test.sol";
import {Ownable} from "forge-std/Ownable.sol";

contract Token is Ownable {

    function mint() public {
        _mint();
    }   

    function _mint() internal virtual {
        console.log("Minting");
    }

}

contract TokenHarness is Token {
    function mint() public {
        _mint();
    }
}