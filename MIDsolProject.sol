// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MIDsolProject {

    // public variables here
    string public tokenName = "Mau Iv Dom";
    string public tokenAbbrv = "MID";
    uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mint(address _address, uint _value) public {
        require(_value > 0, "Insufficient balance to mint");
        totalSupply += _value;
        balances[_address] += _value;
    }

    // burn function
    function burn(address _address, uint _value) public {
        require(_value > 0, "Insufficient balance to burn");
        require(balances[_address] >= _value, "Insufficient balance to burn");
        totalSupply -= _value;
        balances[_address] -= _value;
    }
}
