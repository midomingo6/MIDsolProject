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
