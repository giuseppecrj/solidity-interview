// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/HackMe.sol";

contract HackMeTest is Test {
    HackMe public hackMe;

    function setUp() public {
        hackMe = new HackMe(1000);
    }

    function test() public {

    }
}
