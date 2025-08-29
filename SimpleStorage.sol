// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19; // Stating Solidity Version

contract SimpleStorage {
    // favoriteNumber gets initialized to 0 if no value is given
    
    uint256  myfavoriteNumber; //0

    //uint256[] ListOfFavoriteNumbers; 
    struct Person{
        uint256 favoriteNumber;
        string name;
    }
    // dynamic array 
    Person[] public listOfPeople; // []

        // matthew => 666
        mapping(string => uint256) public nameToFavoriteNumber;
     
     function store(uint256 _favoriteNumber) public {
        myfavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns ( uint256){
        return myfavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
    listOfPeople.push(Person(_favoriteNumber,_name));
    nameToFavoriteNumber[_name] = _favoriteNumber;      
    }
}