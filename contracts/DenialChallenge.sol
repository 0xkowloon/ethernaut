// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract DenialChallenge {
    uint256 public counter;

    receive() external payable {
        while (true) {
            counter += 1;
        }
    }
}
