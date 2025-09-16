// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

/**
 * @title Counter
 * @author The NFT Story Team
 * @notice A simple counter contract for demonstration purposes
 */
contract Counter {
    /// @notice The current counter value
    uint256 public number;

    /**
     * @notice Sets the counter to a specific value
     * @param newNumber The new value to set
     */
    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    /**
     * @notice Increments the counter by 1
     */
    function increment() public {
        ++number;
    }
}
