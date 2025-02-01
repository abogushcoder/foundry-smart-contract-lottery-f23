//SPDX-License-Identifier: SEE LICENSE IN LICENSE

pragma solidity 0.8.19;

/**
 * @title Raffle Contract
 * @author Alex Bogush
 * @notice This contract is for creating a sample raffle
 * @dev Implements Chainlink VRFv2.5
 */

contract Raffle {
    // Errors
    error Raffle__SendMoreToEnterRaffle();

    uint256 private immutable i_entranceFee;

    constructor(uint256 entranceFee) {
        i_entranceFee = entranceFee;
    }

    function enterRaffle() public payable {
        // require(msg.value >= i_entranceFee, "Not enough ETH sent!");
        if (msg.value < i_entranceFee) {
            revert SendMoreToEnterRaffle();
        }
    }

    function pickWinner() public {}

    // Getter Functions

    function getEntranceFee() external view returns (uint256) {
        return i_entranceFee;
    }
}
