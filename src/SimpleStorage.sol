// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract SimpleStorage {
    uint8 public storedData;
    // The function setAddition multiplies any input number by 2 //
    function setAddition(uint8 x) public {
        storedData = x * 2; // storedData should never revert //
    }
}
