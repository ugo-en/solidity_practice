// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.4.16 < 0.9.0;

contract Coin{
    address public minter;
    mapping (address => uint) public balances; // I guess this works like a Java Hashmap or python dictionary

    event Sent(address from, address to, uint amount);  // an action that can be called later. Kind of a reaction.

    constructor(){
        minter = msg.sender;
    }

    function mint(address receiver, uint amount) public{
        require (msg.sender == minter);
        balances[receiver] += amount;
    }

    error InsufficientBalance(uint requested, uint available); // an error that can be called later, if needed

    function send(address receiver, uint amount) public{
        if (amount > balances[msg.sender]){
            revert InsufficientBalance({
                requested: amount,
                available: balances[msg.sender]
            });
        }

        balances[msg.sender] -= amount;
        balances[receiver] += amount;
        emit Sent(msg.sender, receive, amount); // cal the special reaction...
    }
}

