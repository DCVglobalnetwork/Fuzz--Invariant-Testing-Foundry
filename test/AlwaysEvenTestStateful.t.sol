// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {AlwaysEven} from "../src/AlwaysEven.sol";
// import the invariant contract from forge-std
import {StdInvariant} from "forge-std/StdInvariant.sol";

contract AlwaysEvenTestStateful is StdInvariant, Test {
    AlwaysEven public alwaysEven;

    function setUp() public {
        alwaysEven = new AlwaysEven();
        // define the target contract which is going to start executing the functions with random inputs
        targetContract(address(alwaysEven));
    }

    function invariant_testsetEvenNumber() public view {
        assert(alwaysEven.alwaysEvenNumber() % 2 == 0);
    }
}
