// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ErrorHandlingDemo {
    uint256 public balance;

    function setValue(uint256 _value) public {
        require(_value > 0, "Value must be greater than zero");
        balance = _value;
    }

    function checkInvariant() public view returns (string memory) {
        assert(balance > 0);
        return "Invariant holds: value is greater than zero";
    }

    function conditionalRevert(uint256 _otp) public pure {
        if (_otp != 42) {
            revert("Input does not match the OTP");
        }
    }
}
