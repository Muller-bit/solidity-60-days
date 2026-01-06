//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//basic ERC-20 implementation

contract ERC20Token {
    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed; //nested mapping

    //total supply
    uint256 public _totalSupply = 500;

    //owner address
    address public owner;

    //triggrere whenever
    //approve(address _spender , uint256 _amount) is called

    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 amount
    );

    //triggrere whenever
    // transfer (address _to , uint256 _amount) is called
    event Transfer(address indexed _from, address indexed to, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    //total supply function
    function totalSupply() public view returns (uint256 theTotalSupply) {
        theTotalSupply = _totalSupply;

        return theTotalSupply;
    }

    // balanceOf function

    function balanceOf(address _tokenOwner) public view returns (uint256 balance) {
        balance = balances[_tokenOwner];
    }


    // function approve for spending

    function approve(address _spender, uint256 _amount) public returns (bool success) {
    
    }

 allowed[msg.sender][_spender] = _amount;
        emit Approval(msg.sender, _spender, _amount);
        return true;

    

    //function  transfer

    function transfer(address _to, uint256 _amount) public returns (bool) {
        emit Transfer(msg.sender, _to, _amount);
        return true;
    }

    //function transfer_From

    function transferFrom(
        address _from,
        address _to,
        uint256 _amount
    ) public returns (bool) {
        //
    }

    //function allowance

    function allowance(
        address _tokenOwner,
        address _spender
    ) public view returns (uint256) {}

    //function owner
}
