//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//basic ERC-20 implementation

contract ERC20Token {
    address public owner;

    //total supply
    uint256 public _totalSupply = 500;

    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 amount
    );
    event Transfer(address indexed from, address indexed to, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }

    // function approve for spending

    function approve(address _spender, uint _amount) public returns (bool) {
        emit Approval(msg.sender, _spender, _amount);
        return true;
    }

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

    //function balance_of

    function balanceOf(address _tokenOwner) public view returns (uint) {
        //
    }

    //function owner
}
