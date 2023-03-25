/**
 *Submitted for verification at BscScan.com on 2022-07-11
*/
// SPDX-License-Identifier: MIT
pragma solidity =0.8.13;

import "./Ownable.sol";
import "../interface/IBEP20.sol";

contract HasNoEther is Ownable {
  /**
   * @dev Transfer all Ether held by the contract to the owner.
   */
    function reclaimEther() external onlyOwner {
        payable(owner()).transfer(address(this).balance);
    }
  
    function reclaimToken(address token,uint amount) external onlyOwner {
        IBEP20(token).transfer(owner(),amount);
    }
}