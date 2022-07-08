// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IRewarder {
    function onBananaReward(uint256 pid, address user, address recipient, uint256 bananaAmount, uint256 newLpAmount) external;
    function pendingTokens(uint256 pid, address user, uint256 bananaAmount) external view returns (IERC20[] memory, uint256[] memory);
}