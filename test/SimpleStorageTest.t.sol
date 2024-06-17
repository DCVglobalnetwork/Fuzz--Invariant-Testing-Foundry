// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage public simpleStorage;

    function setUp() public {
        simpleStorage = new SimpleStorage();
    }

    //  variable named testValue to pass to our setAddition function and assign it a value of 100 //
    function testAddsWithoutRevert() public {
        uint8 testValue = 128;
        simpleStorage.setAddition(testValue);
        (bool success, ) = address(simpleStorage).call(
            abi.encodeWithSignature("setAddition(uint8)", testValue)
        );
        assert(success);
    }

    function testFuzzRevertOnOverflow(uint8 testValue) public {
        simpleStorage.setAddition(testValue);
        // not declaring the testValue variable anymore. Instead, pass it as an argument to the function //
    }
}
