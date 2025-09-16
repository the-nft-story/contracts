// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {HelloWorld} from "../src/HelloWorld.sol";

/**
 * @title HelloWorldTest
 * @author The NFT Story Team
 * @notice Test suite for the HelloWorld NFT contract
 */
contract HelloWorldTest is Test {
    /// @notice The HelloWorld contract instance for testing
    HelloWorld public helloWorld;
    /// @notice Test user address
    address public user = address(0x123);

    /**
     * @notice Sets up the test environment
     */
    function setUp() public {
        helloWorld = new HelloWorld();
    }

    /**
     * @notice Tests minting a single NFT
     */
    function testMintNFT() public {
        uint256 tokenId = helloWorld.mint(user);

        assertEq(tokenId, 0);
        assertEq(helloWorld.ownerOf(tokenId), user);
        assertEq(helloWorld.totalSupply(), 1);
    }

    /**
     * @notice Tests minting multiple NFTs
     */
    function testMintMultipleNFTs() public {
        uint256 firstTokenId = helloWorld.mint(user);
        uint256 secondTokenId = helloWorld.mint(user);

        assertEq(firstTokenId, 0);
        assertEq(secondTokenId, 1);
        assertEq(helloWorld.totalSupply(), 2);
    }

    /**
     * @notice Tests NFT metadata configuration
     */
    function testNFTMetadata() public view {
        assertEq(helloWorld.name(), "HelloWorld");
        assertEq(helloWorld.symbol(), "HELLO");
    }
}
