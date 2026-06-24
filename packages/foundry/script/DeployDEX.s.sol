//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "../contracts/Balloons.sol";
import "../contracts/DEX.sol";
import "./DeployHelpers.s.sol";

contract DeployDEX is ScaffoldETHDeploy {
    function run() external ScaffoldEthDeployerRunner {
        Balloons balloons = new Balloons();
    console.logString(string.concat("Balloons deployed at: ", vm.toString(address(balloons))));

    DEX dex = new DEX(address(balloons));
    console.logString(string.concat("DEX deployed at: ", vm.toString(address(dex))));

    balloons.transfer(0x1D90D2A4820F4394A1b37bA8bf6314CDD0200792, 10 ether);

    // balloons.approve(address(dex), 100 ether);
    // dex.init{value: 5 ether}(5 ether);
        }
}
