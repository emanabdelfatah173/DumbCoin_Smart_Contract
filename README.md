# DumbCoin Smart Contract
A Solidity smart contract for minting and tracking balances of a digital token on Ethereum.

## Overview

DumbCoin is a minimalistic token contract written in Solidity. It allows the contract deployer to mint tokens and assign them to any address. Users can also check their current balance.

This contract is designed for educational and testing purposes to demonstrate basic concepts of Ethereum smart contracts such as:
- Contract deployment
- Token minting
- Access control using modifiers
- Event logging

## Features

- ✅ Only the deployer can mint new tokens
- ✅ Token balances are stored using a mapping
- ✅ Users can query their balance
- ✅ Emits an event when new tokens are minted

## Technologies

- Solidity 0.8.0
- Ethereum Virtual Machine (EVM)

## Contract Structure

- `constructor()`: Sets the deployer of the contract
- `giveCoins(uint amount, address receiver)`: Mints tokens to a specific address (only by deployer)
- `viewBalance()`: Returns the balance of the caller
- `CoinsMinted`: Event emitted on minting

## How to Use

1. **Deploy** the contract using Remix, Hardhat, or another Ethereum development tool.
2. **Call `giveCoins()`** from the deployer's address to mint tokens.
3. **Call `viewBalance()`** from any address to check the token balance.
