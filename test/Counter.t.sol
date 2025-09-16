// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";

/**
 * @title CounterTest
 * @author The NFT Story Team
 * @notice Test suite for the Counter contract
 */
contract CounterTest is Test {
    /// @notice The Counter contract instance for testing
    Counter public counter;

    /**
     * @notice Sets up the test environment
     */
    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
    }

    /**
     * @notice Tests the increment functionality
     */
    function testIncrement() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    /**
     * @notice Fuzz tests the setNumber functionality
     * @param x The random number to test with
     */
    function testFuzzSetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}
