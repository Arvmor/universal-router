// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.24;

struct UniswapParameters {
    address v2Factory;
    address v3Factory;
    bytes32 pairInitCodeHash;
    bytes32 poolInitCodeHash;
    /// @notice Aerodrome
    address aerodromeFactory;
    bytes32 aerodromePoolInitCodeHash;
    /// @notice Pancake
    address pancakeFactory;
    bytes32 pancakePoolInitCodeHash;
    /// @notice Sushi
    address sushiFactory;
    bytes32 sushiPoolInitCodeHash;
}

contract UniswapImmutables {
    /// @notice The address of UniswapV2Factory
    address internal immutable UNISWAP_V2_FACTORY;

    /// @notice The UniswapV2Pair initcodehash
    bytes32 internal immutable UNISWAP_V2_PAIR_INIT_CODE_HASH;

    /// @notice The address of UniswapV3Factory
    address internal immutable UNISWAP_V3_FACTORY;

    /// @notice The UniswapV3Pool initcodehash
    bytes32 internal immutable UNISWAP_V3_POOL_INIT_CODE_HASH;

    /// @notice The address of AerodromeV3Factory
    address internal immutable AERODROME_V3_FACTORY;

    /// @notice The AerodromeV3Pool initcodehash
    bytes32 internal immutable AERODROME_V3_POOL_INIT_CODE_HASH;

    /// @notice The address of PancakeV3Factory
    address internal immutable PANCAKE_V3_FACTORY;

    /// @notice The PancakeV3Pool initcodehash
    bytes32 internal immutable PANCAKE_V3_POOL_INIT_CODE_HASH;

    /// @notice The address of SushiV3Factory
    address internal immutable SUSHI_V3_FACTORY;

    /// @notice The SushiV3Pool initcodehash
    bytes32 internal immutable SUSHI_V3_POOL_INIT_CODE_HASH;

    constructor(UniswapParameters memory params) {
        /// @notice Uniswap
        UNISWAP_V2_FACTORY = params.v2Factory;
        UNISWAP_V2_PAIR_INIT_CODE_HASH = params.pairInitCodeHash;
        UNISWAP_V3_FACTORY = params.v3Factory;
        UNISWAP_V3_POOL_INIT_CODE_HASH = params.poolInitCodeHash;
        /// @notice Aerodrome
        AERODROME_V3_FACTORY = params.aerodromeFactory;
        AERODROME_V3_POOL_INIT_CODE_HASH = params.aerodromePoolInitCodeHash;
        /// @notice Pancake
        PANCAKE_V3_FACTORY = params.pancakeFactory;
        PANCAKE_V3_POOL_INIT_CODE_HASH = params.pancakePoolInitCodeHash;
        /// @notice Sushi
        SUSHI_V3_FACTORY = params.sushiFactory;
        SUSHI_V3_POOL_INIT_CODE_HASH = params.sushiPoolInitCodeHash;
    }
}
