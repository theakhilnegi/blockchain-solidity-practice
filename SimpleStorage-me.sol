// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; // if you want to set version that and more then do ^0.8.8

// and for range   =>0.8.7 <0.9.0

contract SimpleStorage {
    //this is same as class
    // boolean, uint, int, address, bytes

    // bool flag = false;
    // uint num = 123;         //bydefault size is 256
    // uint num2 = 1;
    // uint256 num3 = 123;     //this specify size of number
    // string name = "Akhil";
    // int256 num4 = -23;
    // address myAddress = 0xA8CC62073eFf30868b237f52263DfFE7e6f9846A;
    // bytes32 name2 = "Smriti";     //32 is max for bytes
    // uint256 favNum0;     //this initialize to zero
    uint256 public favNum; //this set visibility to show

    function store(uint256 _favNum) public virtual {
        favNum = _favNum;
        //retrieve()    -----> retreive or a view function can only use gas if it is called from a gas function
    }

    //view, pure does not uses gas and used when to do arithmetic or just print somthing
    function retrieve() public view returns (uint256) {
        return favNum;
    }

    // function add() public pure returns(uint256){
    //     return (1+2);
    // }

    People public person = People({name: "Akhil", age: 21});
    struct People {
        string name;
        uint256 age;
    }

    // uint256[] public favNumList;        //array of numbers
    People[] public people;

    function addPerson(string memory _name, uint256 _age) public {
        People memory newPerson = People(_name, _age);
        people.push(newPerson);
        nameToAge[_name] = _age;
    }

    //mapping is a data structure where a key is mapped to a single value
    mapping(string => uint256) public nameToAge;
}
