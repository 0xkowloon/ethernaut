// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract RecoveryChallenge {
    function computeAddress(address creator, uint8 nonce)
        external
        returns (address)
    {
        return
            address(
                uint160(
                    uint256(
                        keccak256(
                            abi.encodePacked(
                                bytes1(0xd6),
                                bytes1(0x94),
                                creator,
                                bytes1(nonce)
                            )
                        )
                    )
                )
            );
    }
}
