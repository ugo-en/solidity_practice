// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


contract Mapping{
    // mapping of address and how much wei is in each
    mapping(address => uint) public moneyMap;

    function get(address addr) public view returns (uint) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        return moneyMap[addr];
    }

    function set(address addr, uint i) public {
        // Update the value at this address
        moneyMap[addr] = i;
    }

    function remove(address addr) public {
        // Reset the value to the default value.
        delete moneyMap[addr];
    }

}

contract NestedMapping {
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) public nestedMap;

    function get(address addr1, uint i) public view returns (bool) {
        // You can get values from a nested mapping
        // even when it is not initialized
        return nestedMap[addr1][i];
    }

    function set(address addr1, uint i, bool boo) public {
        nestedMap[addr1][i] = boo;
    }

    function remove(address addr1, uint i) public {
        delete nestedMap[addr1][i];
    }
}