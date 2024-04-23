// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ExampleV1 {
    /// @custom:storage-location erc7201:example.main
    struct MainStorage {
        uint256 x;
        uint256 y;
    }

    // keccak256(abi.encode(uint256(keccak256("example.main")) - 1)) & ~bytes32(uint256(0xff));
    bytes32 private constant MAIN_STORAGE_LOCATION =
        0x183a6125c38840424c4a85fa12bab2ab606c4b6d0e7cc73c0c06ba5300eab500;

    function _getMainStorage() internal pure returns (MainStorage storage $) {
        assembly {
            $.slot := MAIN_STORAGE_LOCATION
        }
    }
    
    function _getXTimesY() internal view returns (uint256) {
        MainStorage storage $ = _getMainStorage();
        return $.x * $.y;
    }
}

contract ExampleV2 is ExampleV1 {
    /// @custom:storage-location erc7201:example.secondary
    struct SecondaryStorage {
        uint256 z;
    }
    
    // keccak256(abi.encode(uint256(keccak256("example.secondary")) - 1)) & ~bytes32(uint256(0xff));
    bytes32 private constant SECONDARY_STORAGE_LOCATION =
        0x1924258aedabd40e2838e078c8996d6a5df44652ac0678deb4d54ca7ab098b00;

    function _getSecondaryStorage() internal pure returns (SecondaryStorage storage $) {
        assembly {
            $.slot := SECONDARY_STORAGE_LOCATION
        }
    }

    function _getXTimesYTimesZ() internal view returns (uint256) {
        MainStorage      storage $1 = _getMainStorage();
        SecondaryStorage storage $2 = _getSecondaryStorage();
        return $1.x * $1.y * $2.z;
    }
}