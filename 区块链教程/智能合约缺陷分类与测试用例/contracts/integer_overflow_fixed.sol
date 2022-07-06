// SPDX-License-Identifier: MIT
pragma solidity ^0.4.24;

// 整数溢出缺陷修复
contract IntegerOverflow {
    // 上溢（加法运算）
    function add(uint8 a, uint8 b) public pure returns(uint8) {
        uint8 c = a + b;
        require(c > a);
        return c;
    }

    // 下溢（减法运算）
    function sub(uint8 a, uint8 b) public pure returns(uint8) {
        require(b <= a);
        return a - b;
    }

    // 上溢（乘法运算）
    function mul(uint8 a, uint8 b) public pure returns(uint8) {
        uint8 c = a * b;
        require(c / a == b);
        return c;
    }
}