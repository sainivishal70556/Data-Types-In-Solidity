// SPDX-License-Identifier: MIT


pragma solidity 0.8.22 ;
contract EtherConverter{
    receive() external payable {}
    function getValueInWei() public view returns(uint256){
        return address(this).balance;
    }

    function getValueInEther() public  view returns (uint256){
        return getValueInWei() / 1 ether;
    }

    function getValueInGwei() public  view returns (uint256){
        return getValueInWei() / 1 gwei;
    }
}