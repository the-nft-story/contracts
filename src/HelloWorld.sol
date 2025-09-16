// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/**
 * @title HelloWorld
 * @author The NFT Story Team
 * @notice A simple NFT contract for educational purposes
 */
contract HelloWorld is ERC721 {
    /// @notice Counter for tracking token IDs
    uint256 private _tokenIdCounter;

    /**
     * @notice Initializes the HelloWorld NFT contract
     */
    constructor() ERC721("HelloWorld", "HELLO") {}

    /**
     * @notice Mints a new NFT to the specified address
     * @param to The address that will receive the NFT
     * @return The ID of the newly minted token
     */
    function mint(address to) public returns (uint256) {
        uint256 tokenId = _tokenIdCounter;
        ++_tokenIdCounter;
        _mint(to, tokenId);
        return tokenId;
    }

    /**
     * @notice Returns the total number of tokens minted
     * @return The total supply of tokens
     */
    function totalSupply() public view returns (uint256) {
        return _tokenIdCounter;
    }
}
