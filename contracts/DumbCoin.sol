// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract DumbCoin {
    address public deployer;

    // A mapping to store balances for each address
    mapping(address => uint256) private balances;

    // Event triggered when coins are minted
    event CoinsMinted(address indexed receiver, uint256 amount);

    // Constructor that runs only once at contract deployment
    constructor() {
        deployer = msg.sender;
    }

    // Modifier to restrict function access to the deployer only
    modifier onlyDeployer() {
        require(msg.sender == deployer, "Only deployer can call this");
        _;
    }

    // Mint new coins to a specific address
    function giveCoins(uint256 amount, address receiver)
        external
        onlyDeployer
    {
        balances[receiver] += amount;
        emit CoinsMinted(receiver, amount);
    }

    // Function to view the balance of the caller
    function viewBalance()
        external
        view
        returns (uint256)
    {
        return balances[msg.sender];
    }
}