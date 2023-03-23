// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/HackMe.sol";

contract HackMeTest is Test {
    HackMe private hackMe;
    address private deployer = address(1);
    address private hacker = address(2);

    function setUp() public {
        vm.prank(deployer);
        hackMe = new HackMe(1000);
    }

    function test() public {
    /**
     * CODE YOUR SOLUTION HERE
     */


    /**
     * SUCCESS CONDITIONS
     */

    // Attacker has 1 million tokens
    assertEq(hackMe.balanceOf(hacker), 1_000_000);
    }
}
