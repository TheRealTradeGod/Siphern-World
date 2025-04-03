GCXToken.sol

solidity
pragma solidity ^0.8.0;

import "./ERC20.sol";
import "./Context.sol";

contract GCXToken is ERC20, Context {
    string private _name;
    string private _symbol;
    uint256 private _totalSupply;

    constructor() public ERC20() {
        _name = "GCX Token";
        _symbol = "GCX";
        _totalSupply = 1000000000 * 10**18;

        _balances[msg.sender] = _totalSupply;
        emit Transfer(address(0), msg.sender, _totalSupply);
    }

    function name() public view returns (string memory) {
        return _name;
    }

    function symbol() public view returns (string memory) {
        return _symbol;
    }

    function decimals() public pure
