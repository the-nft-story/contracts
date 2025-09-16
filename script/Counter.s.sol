// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {Counter} from "../src/Counter.sol";

/**
 * @title CounterScript
 * @author The NFT Story Team
 * @notice Deployment script for the Counter contract
 */
contract CounterScript is Script {
    /// @notice The deployed Counter contract instance
    Counter public counter;

    /**
     * @notice Sets up the deployment script
     */
    function setUp() public {
        // Setup logic can be added here if needed in the future
    }

    /**
     * @notice Deploys the Counter contract
     */
    function run() public {
        vm.startBroadcast();

        counter = new Counter();

        vm.stopBroadcast();
    }
}
