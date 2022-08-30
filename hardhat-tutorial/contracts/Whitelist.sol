//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Whitelist {
    //maximum number of addresses that can be whitelisted
    uint8 public maxWhitelistAddress;

    constructor(uint8 _maxWhitelistAddress) {
        maxWhitelistAddress = _maxWhitelistAddress;
    }
}
