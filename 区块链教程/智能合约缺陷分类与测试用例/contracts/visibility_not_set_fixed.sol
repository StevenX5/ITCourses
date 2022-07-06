// SPDX-License-Identifier: MIT
pragma solidity ^0.4.24;

// 函数默认可见性缺陷修复
contract HashForEther {
    // 判断赢家
    function withdrawWinnings() public {
        // 如果地址最后4个字节为零则赢
        require(uint32(msg.sender) == 0);
        sendWinnings();
    }

    // 发送以太币
    function sendWinnings() internal {
        msg.sender.transfer(address(this).balance);
    }
}