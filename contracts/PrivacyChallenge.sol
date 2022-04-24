pragma solidity 0.8.13;

contract PrivacyChallenge {
    // web.eth.getStorageAt(contractAddress, 5);
    bytes16 public constant answer =
        bytes16(
            uint128(
                uint256(
                    0xfd0f29420688b1d09a35cf30bf2a18e735dbc798e5c01ec5bd65a82f3ae58141
                ) >> 128
            )
        );
}
