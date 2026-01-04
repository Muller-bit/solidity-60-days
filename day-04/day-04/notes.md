### ERC-20 standard rules implemntation

## ERC token standard 20 tokens in a smart contract token that follows the Ethereum Request for Comment proposal 20 guidelines. Our program will have the following mandatory functions:

- function totalSupply() public view returns (uint256);
- function balanceOf(address tokenOwner) public view returns (uint);
- function allowance(address tokenOwner, address spender)
- function transfer(address to, uint tokens) public returns (bool);
- function approve(address spender, uint tokens) public returns (bool);
- function transferFrom(address from, address to, uint tokens) public returns (bool);
- And two events which emit to the external application:

## What are events ?

- event Approval(address indexed tokenOwner, address indexed spender, uint tokens);
- event Transfer(address indexed from, address indexed to, uint tokens);

## Important keywords used:

- Event: An event is Solidity’s way of allowing clients e.g notifying your front end application about the occurrence of a specific event.
- View: View functions ensure that they will not modify the state
- public: A public function can be accessed outside the contract itself
- indexed: Up to three parameters can receive the attribute indexed through which we can search respective arguments.
- Step 1: The expression mapping(address => uint256) defines an associative array whose keys are of type address and value of type uint256 used to store the balance.

- balances will hold the token balance of each owner's account.
- allowed will include all the accounts approved to withdraw from a given account together with the withdrawal sum allowed for each.
