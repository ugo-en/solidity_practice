// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Loops {
    function forLoop() public {
        // for loop starts
        for (uint i = 0; i < 20; i++) {
            if (i == 7) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 10) {
                // Exit loop with break
                break;
            }
        }
    }
    function whileLoop() public {
        // while loop
        uint j;
        while (j < 10) {
            j++;
        }
    }
}
