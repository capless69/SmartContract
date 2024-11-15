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
