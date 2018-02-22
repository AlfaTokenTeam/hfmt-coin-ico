pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract HFMTCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function HFMTCoin(address _owner)  UpgradeableToken(_owner) {
    name = "HFMTCoin";
    symbol = "HFMT";
    totalSupply = 80000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}