require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

//* How to change this file
/*
- Uncomment the verfication lines if you want to verify your contract. Make sure you do the same in the `deploy.js` in the scripts folder.

Make sure you have created a file called `.env` which has the following lines. Change the values into your URL and private key :

ALCHEMY_API_KEY_URL="https://........"
WALLET_PRIVATE_KEY="e17ubj82ybe......"


# Make sure to add the follow line and change the value if you want to verify and remove the `#`
# SCAN_KEY="ib813hbiad......"

*/

module.exports = {
  solidity: "0.8.9",
  defaultNetwork: "sepolia",
  networks: {
    sepolia: {
      url: process.env.QUICKNODE_HTTP_URL,
      accounts: [process.env.PRIVATE_KEY],
    },
  },
};

module.exports;
