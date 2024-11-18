# Error Handling Demo

This Solidity program is designed to demonstrate various error handling mechanisms available in the Solidity programming language, specifically focusing on require, assert, and revert statements. The purpose of this contract is to provide an example of how to handle potential errors and ensure the integrity of smart contracts on the Ethereum blockchain.

## Description

The ErrorHandlingDemo contract is a simple Solidity contract that showcases error handling techniques using:

require: Used to validate input conditions.
assert: Used to check for conditions that should never fail.
revert: Used to provide a custom error message when a condition is not met.

Key Features:
setValue: Allows setting a positive balance value.
checkInvariant: Verifies an invariant condition using assert.
conditionalRevert: Demonstrates conditional error handling using revert.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., ErrorHandlingDemo.sol).. Copy and paste the following code into the file:

```solidity
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


```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Ensure the compiler version is set to 0.8.17 (or another compatible version)., and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the contract from the dropdown menu, and then click on the "Deploy" button.

## Authors

Daniel Jude R. Seno
[Github: djrseno](https://github.com/djrseno)


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
