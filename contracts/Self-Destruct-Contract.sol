// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract A {
    constructor(address payable recipient) payable {
        selfdestruct(recipient);
    }
}
