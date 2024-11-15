# Solidity Error Handler Contract
This Solidity program demonstrates error handling mechanisms in Solidity smart contracts, including the use of require, assert, and revert. It is a beginner-friendly example for understanding how to incorporate error handling in Ethereum-based smart contracts.

## Description
The ErrorHandlerContract includes two primary functions:
1. setValue: Sets a new value to the contract while ensuring it meets specified conditions.
2. performDivision: Performs division after validating the inputs, ensuring they meet the required constraints.
This contract illustrates how developers can ensure their smart contracts behave predictably by including robust error-handling logic.

## Getting Started
### Executing the Program
To run this program, you can use Remix, an online Solidity IDE. To get started, visit the Remix website at https://remix.ethereum.org/.

1. Create a New File: Click the "+" icon in the left sidebar and save the file with a .sol extension (e.g., ErrorHandlerContract.sol).

2. Copy and Paste the Code: Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract ErrorHandlerContract {
    uint public value;

    // Function to set the value, ensuring it meets specified conditions
    function setValue(uint _value) public {
        require(_value > 0, "Value must be greater than 0."); // Check if value is positive
        assert(_value != value); // Ensure the new value is different from the current value
        value = _value; // Update the value
    }

    // Function to perform division with error handling
    function performDivision(uint _numerator, uint _denominator) public pure returns (uint) {
        require(_denominator != 0, "Cannot divide by zero."); // Ensure denominator is non-zero

        if (_numerator % _denominator != 0) {
            revert("Numerator must be divisible by denominator."); // Revert if not divisible
        }
        
        return _numerator / _denominator; // Return the result of the division
    }
}
```
3. Compile the Code:
  * Click on the "Solidity Compiler" tab in the left sidebar.
  * Ensure the compiler version is set to 0.8.28 (or another compatible version).
  * Click the "Compile ErrorHandlerContract.sol" button.

4. Deploy the Contract:
 * Navigate to the "Deploy & Run Transactions" tab.
 * Select the ErrorHandlerContract from the dropdown menu.
 * Click the "Deploy" button.
   
5. Interact with the Contract:
 * Use the setValue function to set a new value while ensuring it meets the conditions.
 * Use the performDivision function to perform division with proper validation.
   
## Authors
Metacrafter Caps


## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
