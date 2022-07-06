// SPDX-License-Identifier: MIT
pragma solidity ^0.4.24;

// 整数溢出
contract IntegerOverflow {
    // 上溢（加法运算）
    function add(uint8 a, uint8 b) public pure returns(uint8) {
        return a + b;
    }

    // 下溢（减法运算）
    function sub(uint8 a, uint8 b) public pure returns(uint8) {
        return a - b;
    }

    // 上溢（乘法运算）
    function mul(uint8 a, uint8 b) public pure returns(uint8) {
        return a * b;
    }
}