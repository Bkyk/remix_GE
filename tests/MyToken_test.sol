// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol";
import "../contracts/MyToken.sol";

contract MyTokenTest is MyToken {

    function testTokenInitialValues() public {
        Assert.equal(name(), "MyToken", "token name did not match");
        Assert.equal(symbol(), "MTK", "token symbol did not match");
        Assert.equal(decimals(), 18, "token decimals did not match");
        Assert.equal(totalSupply(), 0, "token supply should be zero");
    }

    function mint(address to, uint64 value) external {
        _mint(to,value);
    }

    function burn(uint256 value) external {
        _burn(msg.sender, value);
    }
}
