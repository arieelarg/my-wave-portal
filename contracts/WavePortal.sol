// SPDX-License-Identifier: MIT
// licenses: https://spdx.org/licenses/
pragma solidity ^0.8.0; // Solidity compiler version we want our contract to use

import "hardhat/console.sol"; // for debuggin purposes

contract WavePortal {
    uint256 totalWaves; // static to the contract

    uint256 private seed;

    event NewWave(address indexed from, uint256 timestamp, string message);

    struct Wave {
        address waver; // The address of the user who waved.
        string message; // The message the user sent.
        uint256 timestamp; // The timestamp when the user waved.
    }

    Wave[] waves; // waves[] = variable to storage history of waves

    constructor() payable {
        console.log("Smart Contracting FTW!"); // only for dev

        seed = (block.timestamp + block.difficulty) % 100;
    }

    function wave(string memory _message) public {
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);

        waves.push(Wave(msg.sender, _message, block.timestamp));

        seed = (block.difficulty + block.timestamp + seed) % 100;

        console.log("Random # generated: %d", seed);

        if (seed <= 50) {
            console.log("%s won!", msg.sender);

            uint256 prizeAmount = 0.0001 ether;
            require(
                prizeAmount <= address(this).balance,
                "Trying to withdraw more money than the contract has."
            );
            (bool success, ) = (msg.sender).call{value: prizeAmount}("");
            require(success, "Failed to withdraw money from contract.");
        }

        emit NewWave(msg.sender, block.timestamp, _message); // Así se llama al evento NewWave
    }

    function getTotalWaves() public view returns (uint256) {
        return totalWaves; // returns total of waves
    }

    function getAllWaves() public view returns (Wave[] memory) {
        return waves; // returns all waves
    }
}