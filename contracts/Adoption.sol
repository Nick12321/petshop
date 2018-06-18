pragma solidity ^0.4.24;

contract Adoption {
    
    address[16] public adopters;
    
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <=15, "Invalid pet ID provided");
        
        adopters[petId] = msg.sender;
        return petId;
    }
    
    function getAdopters() public view returns (address[16]) {
        return adopters;
    }
}