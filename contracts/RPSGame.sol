pragma solidity >=0.4.22 <0.9.0;

contract RPSGame {
    address public owner; // storage variable 
    address[] public  players;
    mapping (address => bool) public playerExistingAddress;

    constructor() public   {
        owner = msg.sender;
    }

    function joinGame() public {
        require(!playerExistingAddress[msg.sender]);
        players.push(msg.sender);
        playerExistingAddress[msg.sender] = true;
    }

    function getPlayers() public view returns (address[] ) {
        require(owner == msg.sender);
        return players;
    }
  
}