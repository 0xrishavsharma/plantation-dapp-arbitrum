/**
 * @type import('hardhat/config').HardhatUserConfig
 */
require('@nomiclabs/hardhat-ethers')

const { hardhatConfig } = require('arb-shared-dependencies')
const { ALCHEMY_RPC, mnemonic } = require('./secrets.json');

module.exports = hardhatConfig

module.exports = {
  networks:{
    arbitrum:{
      url: `https://arb-rinkeby.g.alchemy.com/v2/${ALCHEMY_RPC}`,
      accounts:{ mnemonic: mnemonic },
    }
  },
  solidity: {
    version: "0.8.0",
  }
}