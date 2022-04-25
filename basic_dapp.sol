// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract basicDapp {

    uint balance;

    constructor() {
        balance = 0;
    }

    function sendBalance(uint amount) public {
        balance += amount;
    }

    function withDrawBalance(uint amount) public {
        require(balance > amount, "Not Enough Balance");
        balance -= amount;
    }

    function getBalance() public view returns(uint) {
        return balance;
    }
    
}
