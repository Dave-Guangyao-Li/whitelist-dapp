//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Whitelist {
    //maximum number of addresses that can be whitelisted
    uint8 public maxWhitelistedAddresses;

    //keep track of number of addresses that are whitelisted
    uint8 public numAddressesWhitelisted;

    //hashmap of whitelisted addresses, faster than array, give value directly avoid loop, less gas spent
    mapping(address => bool) public whitelistedAddresses;

    constructor(uint8 _maxWhitelistedAddresses) {
        maxWhitelistedAddresses = _maxWhitelistedAddresses;
    }

    //add address to whitelist
    function addressToWhitelist() public {
        //msg.sender is the address of user who called this function
        require(
            !whitelistedAddresses[msg.sender], //Calling require(x) where x evaluates to false.
            "Sender already in the whitelist"
        );
        require(
            numAddressesWhitelisted < maxWhitelistedAddresses,
            "Max limit reached"
        );
        whitelistedAddresses[msg.sender] = true;
        numAddressesWhitelisted += 1; //increase number of address whitelisted
    }
}
