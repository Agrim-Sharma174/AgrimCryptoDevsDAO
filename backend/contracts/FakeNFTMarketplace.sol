//SPDX License-Identifier: MIT
pragma solidity ^0.8.10;

contract FakeNFTMarketplace {
    // mapping of Fake TokenId to owner address
    mapping(uint256 => address) public tokens;

    //See the purchase price of each Fake NFT
    uint256 nftPrice = 0.1 ether;

    //This function accepts ehther and assigns the NFT to the buyer
    function purchase(uint256 _tokenId) external payable {
        require(msg.value == nftPrice, "Price of NFT is 0.1 ether");
        tokens[_tokenId] = msg.sender;
    }

    // This function returns price of one NFT
    function getPrice() external view returns (uint256) {
        return nftPrice;
    }

    //This function checks if the NFT whose tokenId is passed as a parameter is sold or not, and available
    function available(uint256 _tokenId) external view returns (bool) {
        // address(0) is the default value of an address = 0x0000000000000000000000000000000000000000
        if (tokens[_tokenId] == address(0)) {
            return true;
        } else {
            return false;
        }
    }
}
