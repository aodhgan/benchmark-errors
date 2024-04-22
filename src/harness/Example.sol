// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {console} from "forge-std/Test.sol";
import {Ownable} from "../../lib/openzeppelin-contracts/contracts/access/Ownable.sol";

contract Token is Ownable {

    constructor() Ownable(msg.sender) {
    }


    function mint() external virtual onlyOwner {
        _mint();
    }   

    function _mint() internal virtual {
        console.log("Minting");
    }

}

contract TokenHarness is Token {
    function mint() external override {
        _mint();
    }
}