// SPDX-License-Identifier: MIT
pragma solidity ^0.4.18;

contract EtherStore {
    uint256 public withdrawLimit = 1 ether;
    mapping(address => uint256) public lastWithdrawTime;
    mapping(address => uint256) public balances;

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount);
        require(amount <= withdrawLimit);
        require(block.timestamp >= lastWithdrawTime[msg.sender] + 1 weeks);
        require(msg.sender.call.value(amount)());
        balances[msg.sender] -= amount;
        lastWithdrawTime[msg.sender] = block.timestamp;
    }
 }