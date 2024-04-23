// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;


import {console} from "forge-std/Console.sol";

contract Structs {

    ReceivingStructs public receivingStructs;



    constructor() {
        receivingStructs = new ReceivingStructs();
        
        largeStruct.a = 1;

        smallStruct.a = 1;

        for(uint256 i = 0; i < 500; i++) {
            largePopulatedtruct.gap[i] = i;
        }
    }


    struct LargeStruct {
        uint256 a;
        uint256[500] gap;
    }
    LargeStruct largeStruct;
    LargeStruct largePopulatedtruct;

    struct SmallStruct {
        uint256 a;
    }
    SmallStruct smallStruct;


    function passLargeStruct () external  view {
        receivingStructs.receiveLargeStruct(largeStruct);
    }

    function passLargePopulatedStruct () external  view {
        receivingStructs.receiveLargeStruct(largeStruct);
    }

    function passSmallStruct () external view  {
        receivingStructs.receiveSmallStruct(smallStruct);
    }

    function passLargeStructToLib () external {
        ReceivingLib.receiveLargeStruct(largeStruct);
    }

}

contract ReceivingStructs {
    function receiveLargeStruct(Structs.LargeStruct memory largeStruct) public pure {
        
    }

    function receiveSmallStruct(Structs.SmallStruct memory smolStruct) public pure {
        
    }
}

library ReceivingLib {
    function receiveLargeStruct(Structs.LargeStruct memory largeStruct) public {
        // console.log("received large struct value a ", largeStruct.a);
    }

}