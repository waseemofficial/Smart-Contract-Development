//SPDEX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract FundMe {
    uint256 public minimumUSD = 5;
    function fund() public payable {
        require(msg.value > minimumUSD, "Didn't send enough ETH");
    }
}
