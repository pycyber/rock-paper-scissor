pragma solidity >=0.4.22 <0.9.0;

contract RPSGame {
    address public owner; // storage variable 
    address[2] public  players;
    mapping (address => bool) public playerExistingAddress;
    uint  idx;
    
    

    constructor() public   {
        owner = msg.sender;
    }

    function joinGame() public {
        require(!playerExistingAddress[msg.sender]);
        // require(idx < players.length);
        players[idx] = msg.sender;
        playerExistingAddress[msg.sender] = true;
        idx++;

    }

    function getPlayers() public view returns (address[2]  memory ) {
        require(owner == msg.sender);
        return players;
    }
  
}


// contract Garbage {
//     address[3] public addresses;
//     uint idx;

//     function addAddress(address _address) public {
//         require(idx < addresses.length);

//         addresses[idx] = _address;
//         idx++;
//     }
// }








