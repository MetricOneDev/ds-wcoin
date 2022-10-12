pragma solidity >=0.4.23;

import "./wcoin9.sol";

contract DSWCoinFactory {
    event LogMake(address indexed creator, address token);

    function make() public returns (WCoin9_ result) {
        result = new WCoin9_();
        emit LogMake(msg.sender, address(result));
    }
}
