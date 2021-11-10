// SPDX-License-Identifier: Unlicensed

pragma solidity ^0.8.0;

contract VolcanoCoin {
    
    uint totalSupply = 10000;
    
    address owner;
    
    // events are like logging when called
    event SupplyChange (uint);
    
    // executes only once when the contract is deployed
    constructor() {
        owner = msg.sender;
    }
    
    // adds to a function a condition
    modifier onlyOwner() {
        if(msg.sender==owner) {
            _;
        }
    }
    
    
    function getTotalSupply() public view returns (uint) {
        return totalSupply;
    }
    
    function increaseTotalSupply() public onlyOwner {
        totalSupply += 100;
        emit SupplyChange(totalSupply);
    }
    
    
}