// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Roulette {
    uint public pastBlockTime;
  
    // initially contract
    constructor() {}

    // receive function
    receive() external payable {}

    // fallback function used to make a bet
    fallback() external payable {
        require(msg.value == 1 ether); // must send 1 ether to play
        require(block.timestamp != pastBlockTime);  // only 1 transaction per block
        pastBlockTime = block.timestamp;
        if(block.timestamp % 15 == 0) { // winner
            payable(msg.sender).transfer(address(this).balance);
        }
    }
}