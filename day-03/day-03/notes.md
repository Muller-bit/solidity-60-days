## Solidity Inheritance — Building on Existing Code

- Inheritance allows a contract to acquire properties and behavior (state variables and functions) from another contract.

- Solidity uses the "is" keyword to establish inheritance.

- Core concepts:

## Base & Derived:-

- The "Parent" contract is the Base,
- the "Child" contract is Derived.

- The virtual Keyword:-
- to allow a Child contract to modify the parent contract's function.
- mark that function in the Parent contract as "virtual"

The override Keyword:-

- Child contract use the override keyword to changes a parent's function.

## Multiple Inheritance:-

- A single contract can inherit from multiple parents.

- Access Levels:-

- internal functions are visible to children, but private functions are not!

Key note:

1. Simple Inheritance
2. Virtual/Override functions
3. Multiple Inheritance
