// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MoneyHandler {
    uint256 public totalReceived;

    // Function to receive Ether, function that is called when Ether is sent to the contract
    function deposit() public payable {
        totalReceived += msg.value;
    }

    //2.Triggered when Ether is sent directly to contract address without any data
    receive() external payable {
        totalReceived += msg.value;
    }

    //3.Triggered if non-existent function is called or Ether is sent with data
    fallback() external payable {
        totalReceived += msg.value;
    }

    // Function to check the contract's balance
    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}

/////////////////////////////////////////////////////////

contract PayableRcvFallback {
    event Received(address sender, uint256 amount, string method);

    // Fallback function to receive Ether when no data is sent
    fallback() external payable {
        emit Received(msg.sender, msg.value, "fallback");
    }

    // Receive function to receive Ether when data is empty
    receive() external payable {
        emit Received(msg.sender, msg.value, "receive");
    }
}
