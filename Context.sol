Context.sol

solidity
pragma solidity ^0.8.0;

contract Context {
    constructor() {}

    function _msgSender() internal view returns (address) {
        return msg.sender;
    }

    function _msgData() internal view returns (bytes calldata) {
        return msg.data;
    }
}
