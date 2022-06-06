//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./ERC721.sol";

abstract contract NFTRoyalties is ERC721{
    function supportsInterface(bytes4 interfaceId) public view virtual override(ERC721) returns (bool) {
        return super.supportsInterface(interfaceId);
    }   

    function _burn(uint256 tokenId) internal virtual override {
        super._burn(tokenId);
        _resetTokenRoyalty(tokenId);
    } 
}