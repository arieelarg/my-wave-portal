# Wave portal

A ERC-20 contract deployed through Alchemy into Rinkeby test network.

# Project scripts

```shell
npm run run-contract // runs the whole thing locally (transactions)
npm run deploy:localhost // deploys to localhost
npm run deploy:realnet // deploys to realnet (in this project Rinkeby)
```

# How to develop?

Every time we make a change in the contract we could validate the output by running: 

```shell
npm run contract
```

# How to deploy to realnet?

Just run:

```shell
npm run deploy:realnet
```

# Another Useful Hardhat scripts

```shell
npx hardhat accounts
npx hardhat compile
npx hardhat clean
npx hardhat test
npx hardhat node // starts local blockchain
npx hardhat help
```

# Hardhat?

The Hardhat Runtime Environment, or HRE for short, is an object containing all the functionality that Hardhat exposes when running a task, test or script. Hardhat is the HRE.

More information [here](https://hardhat.org/advanced/hardhat-runtime-environment?utm_source=buildspace.so&utm_medium=buildspace_project)