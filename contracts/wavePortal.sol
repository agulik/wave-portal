// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal {

  uint256 totalWaves;
  mapping(address => uint) public leaderboard;

  constructor() {
    console.log("Yo yo - I am a contract and I am smart");
  }

  function wave() public {
    totalWaves += 1;
    console.log("%s has waved!", msg.sender);
    updateLeaderboard(msg.sender);
  }

  function getTotalWaves() public view returns (uint256) {
    console.log("we have %d total waves!", totalWaves);
    return totalWaves;
  }

  function updateLeaderboard(address _addr) public {
      leaderboard[_addr] = leaderboard[_addr] + 1;
      console.log("%s has waved a total of %d times", _addr, leaderboard[_addr]);
  }

}