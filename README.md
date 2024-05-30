#MIDsolProject
This code is intended to create a basic token on the Ethereum blockchain. It includes functionalities for burning tokens, minting new ones, and checking balances.

##Description
This code serves as an illustration of the essential concepts involved in creating and managing tokens on the Ethereum blockchain.

##Getting Started 
###Executing program
Use Remix, an online Solidity IDE to execute this program. Visit the Remix website at https://remix.ethereum.org/ to get started.

After navigating to the website, click the ("+") icon on the left side of the screen to create a new file. Save the file with a ".sol" extension. Next, copy and paste the code below into your file.

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MIDsolProject {

    string public tokenName = "MauIvDom Chain";
    string public tokenAbbrv = "MIDC";
    uint public totalSupply = 0;

    mapping(address => uint) public balances;

    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    function burn(address _address, uint _value) public {
        require(balances[_address] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}

To compile the code, navigate to the Solidity Compiler tab in the left sidebar. Ensure that the complier option is set to 0.8.18, and then click the "Compile" button labeled with ".sol".

Once you've compiled the code, proceed to the "Deploy & run transactions" tab located on the left side of the Solidity Compiler tab. Click the "Deploy" button to deploy the contract. After the deployment is complete, you can interact with the contract using the Remix interface. 
Here are the steps to execute the functions:

###Minting Tokens
Find the 'mint' function in the deployed contract section.
Input the address where you want to mint the tokens and specify the number of tokens to mint.
Click the "transact" button to execute the mint function.

###Burning Tokens
Find the 'burn' function in the deployed contract section.
Input the address where you want to burn the tokens and specify the number of tokens to burn.
Click the "transact" button to execute the burn function.

###Checking Balances
Find the balances mapping in the deployed contract section.
Input the address for which you want to check the balance.
Click the "call" button to retrieve the balance of the specified address.

##Authors
Contributors names and contact info

Maurice Ivan Domingo
midchain666@gmail.com

##License
This project is licensed under the MIT License - see the LICENSE.md file for details
