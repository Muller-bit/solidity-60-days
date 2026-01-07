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
// Example with virtual and override , Base and Derived

contract Base {
    function greet() public pure virtual returns (string memory) {
        return "Hello from Base";
    }
}

contract Derived is Base {
    function greet() public pure override returns (string memory) {
        return "Hello from Derived";
    }
}

// Another example with multiple inheritance

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

contract B is A {
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
}

contract C is B {
    function foo() public pure override returns (string memory) {
        return "C";
    }
}
