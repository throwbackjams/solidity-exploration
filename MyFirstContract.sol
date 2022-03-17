pragma solidity ^0.8.7;

contract MyFirstContract {
    uint256 number = 0;
    string[] names;
    mapping (string => uint) public phoneNumbers; 

    function getNamesLength() public view returns(uint) {
        return names.length;
    }

    function addPhoneNumber(string memory _name, uint _num) public {
        phoneNumbers[_name] = _num;
    }

    function getPhoneNumber(string memory _name) public view returns(uint) {
        return phoneNumbers[_name];
    }

    function addName(string memory _name) public {
        names.push(_name);
    }

    function getName(uint256 _index) public view returns (string memory) {
        return names[_index];
    }

    function incrementNumber(uint256 _num) public {
        number = _num + number;
    } 

    function getNumber() public view returns(uint256) {
        return number;
    }

    function getNumberMultiplied(uint256 _num) public view returns(uint256) {
        uint256 multNumber;
        multNumber = number * _num;
        return multNumber;
    }

    function addNumbers(uint256 _num1, uint256 _num2) public {
        number = _num1 + _num2;
    }
}