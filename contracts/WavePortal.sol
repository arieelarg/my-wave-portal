// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0; // Solidity compiler version we want our contract to use

import "hardhat/console.sol"; // for debuggin purposes

contract WavePortal {
    uint256 totalWaves; // static to the contract

    constructor() {
        console.log("Hello world!"); // only for dev
    }

    function wave() public { // type: public, this allows for public use
        totalWaves += 1;
        console.log("%s has waved!", msg.sender); // only for dev
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves); // only for dev
        return totalWaves;
    }
}