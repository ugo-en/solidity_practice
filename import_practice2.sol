// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "./import_practice1.sol" as file1;

contract Cat is file1.Mammal{
    function makeSound() public override returns (string){
        return "Meow";
    }
}
