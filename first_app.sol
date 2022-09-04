// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Counter{
    uint public count;

    // function to get the current count
    function get() public view returns (uint){
        return count;
    }

    // function to increase count by 1
    function inc() public{
        count += 1;
    }

    // function to decrease count by 1
    function dec() public{
        // should fail if count == 0;
        if (count > 0 ){
            count += 1;
        }
    }
}
