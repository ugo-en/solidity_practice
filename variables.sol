// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract VariablesAndConstants {
    // State variables are stored on the blockchain.
    string public text = "Hello";
    uint public number = 123;

    // coding convention to uppercase constant variables
    address public constant MY_ADDRESS = 0x777788889999AaAAbBbbCcccddDdeeeEfFFfCcCc;
    uint public constant MY_UINT = 123;

    // immutables can be set in the constructor, and nowhere else
    string public immutable name;

    constructor (string n) public {
        name = n;
    }

    function doSomething() public {
        // Local variables are not saved to the blockchain.
        uint i = 456;

        // Here are some global variables
        uint timestamp = block.timestamp; // Current block timestamp
        address sender = msg.sender; // address of the caller
    }
}
