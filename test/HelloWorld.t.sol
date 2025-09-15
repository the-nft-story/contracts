// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {HelloWorld} from "../src/HelloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld public helloWorld;
    address public user = address(0x123);

    function setUp() public {
        helloWorld = new HelloWorld();
    }

    function testMintNFT() public {
        uint256 tokenId = helloWorld.mint(user);

        assertEq(tokenId, 0);
        assertEq(helloWorld.ownerOf(tokenId), user);
        assertEq(helloWorld.totalSupply(), 1);
    }

    function testMintMultipleNFTs() public {
        uint256 firstTokenId = helloWorld.mint(user);
        uint256 secondTokenId = helloWorld.mint(user);

        assertEq(firstTokenId, 0);
        assertEq(secondTokenId, 1);
        assertEq(helloWorld.totalSupply(), 2);
    }

    function testNFTMetadata() public view {
        assertEq(helloWorld.name(), "HelloWorld");
        assertEq(helloWorld.symbol(), "HELLO");
    }
}