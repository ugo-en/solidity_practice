// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Mammal{
    string private name;

    constructor(string n){
        name = n;
    }

    function getName() public returns(string){
        return name;
    }

    function setName(string n) public {
        name = n;
    }

    function makeSound() public returns(string){
        return "Default sound";
    }
}