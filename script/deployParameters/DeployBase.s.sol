// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {DeployUniversalRouter} from '../DeployUniversalRouter.s.sol';
import {RouterParameters} from 'contracts/types/RouterParameters.sol';

contract DeployBase is DeployUniversalRouter {
    function setUp() public override {
        params = RouterParameters({
            permit2: 0x000000000022D473030F116dDEE9F6B43aC78BA3,
            weth9: 0x4200000000000000000000000000000000000006,
            v2Factory: 0x8909Dc15e40173Ff4699343b6eB8132c65e18eC6,
            v3Factory: 0x33128a8fC17869897dcE68Ed026d694621f6FDfD,
            pairInitCodeHash: 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f,
            poolInitCodeHash: 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54,
            v4PoolManager: 0x498581fF718922c3f8e6A244956aF099B2652b2b,
            v3NFTPositionManager: 0x03a520b32C04BF3bEEf7BEb72E919cf822Ed34f1,
            v4PositionManager: 0x7C5f5A4bBd8fD63184577525326123B519429bDc,
            // Other Protocols
            /// @notice Aerodrome
            aerodromeFactory: 0x5e7BB104d84c7CB9B682AaC2F3d509f5F406809A,
            aerodromePoolInitCodeHash: 0xffb9af9ea6d9e39da47392ecc7055277b9915b8bfc9f83f105821b7791a6ae30,
            /// @notice Pancake
            pancakeFactory: 0x0BFbCF9fa4f9C56B0F40a671Ad40E0805A091865,
            pancakePoolInitCodeHash: 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2,
            /// @notice Sushi
            sushiFactory: 0xc35DADB65012eC5796536bD9864eD8773aBc74C4,
            sushiPoolInitCodeHash: 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
        });

        unsupported = 0x9E18Efb3BE848940b0C92D300504Fb08C287FE85;
    }
}
