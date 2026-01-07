// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//Inheritance example

contract Parent {
    uint256 public value;

    function setValue(uint256 _value) public {
        value = _value;
    }
}

contract Child is Parent {
    // We can access setValue and value from Parent contract
    // as its public
    function getValue() public view returns (uint256) {
        return value;
    }
}
