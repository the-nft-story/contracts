// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {HelloWorld} from "../src/HelloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld public HelloWorld;
    address public user = address(0x123);

    function setUp() public {
        HelloWorld = new HelloWorld();
    }

    function testMintNFT() public {
        uint256 tokenId = HelloWorld.mint(user);

        assertEq(tokenId, 0);
        assertEq(HelloWorld.ownerOf(tokenId), user);
        assertEq(HelloWorld.totalSupply(), 1);
    }

    function testMintMultipleNFTs() public {
        uint256 firstTokenId = HelloWorld.mint(user);
        uint256 secondTokenId = HelloWorld.mint(user);

        assertEq(firstTokenId, 0);
        assertEq(secondTokenId, 1);
        assertEq(HelloWorld.totalSupply(), 2);
    }

    function testNFTMetadata() public {
        assertEq(HelloWorld.name(), "HelloWorld");
        assertEq(HelloWorld.symbol(), "HELLO");
    }
}