//SPDX-License-Identifier: MIT

pragma solidity 0.8.0;

contract Plantation {

    event PlantAlloted(uint plantId);
    event VolunteersRetrieved(address[]);
    address[20] public volunteers =[
        address(0),
		address(0),
		address(0),
		address(0),
		address(0),
		address(0),
		address(0),
		address(0),	
		address(0),
		address(0),
		address(0),
		address(0),
		address(0),
		address(0),
		address(0),
		address(0),
        address(0),
		address(0),
		address(0),
		address(0)
    ];

    //  Alotting plants to volunteers
    function allotPlant(uint256 plantId) public returns(uint256) {
        // Require function is gas intensive, when possible use if else statements to tackle conditions like this
        require(plantId >= 0 && plantId <= 19); 
        // Mapping the volunteer's address to the plant alloted 
        volunteers[plantId] = msg.sender;
        emit PlantAlloted(plantId);
        return plantId;
    }

    function getVolunteers() public view returns( address[20] memory){
        return volunteers;
    }

}