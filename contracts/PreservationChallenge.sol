// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract PreservationChallenge {
    address public timeZone1Library;
    address public timeZone2Library;
    uint256 public owner;

    function setTime(uint256 _owner) public {
        owner = _owner;
    }
}
