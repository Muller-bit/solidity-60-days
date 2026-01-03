// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
contract Basics {
    // Declaring state variables
    uint public var1;
    uint public var2;
    uint public sum;

    // Defining public function
    // that sets the values of
    // the state variables var1 and var2

    function set(uint x, uint y) public returns (uint) {
        // here set function is not view because
        // we are modifying the state variables , this cost us gas !
        var1 = x;
        var2 = y;
        sum = var1 + var2;
        return sum;
    }

    // if we want to do the computation without gas cost

    /*function set(uint x , uint y) public pure returns(uint){
        return x + y;
     }*/

    // Defining  function to
    // print the sum of the state variables

    function getSum() public view returns (uint) {
        return sum;
    }
}
