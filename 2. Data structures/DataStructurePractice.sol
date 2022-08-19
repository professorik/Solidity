// SPDX-License-Identifier: UNLICENSED 
pragma solidity 0.8.12; 
 
import "IDataStructurePractice.sol"; 
import "@openzeppelin/contracts/access/Ownable.sol"; 
 
contract DataStructurePractice is IDataStructurePractice, Ownable { 
    mapping(address => User) public users; 
 
    function setNewUser(address _userAdr, User calldata _newUser) external onlyOwner{ 
        users[_userAdr] = _newUser; 
    } 
 
    function getUser(address _user) external view returns(User memory){ 
        return users[_user]; 
    } 
 
    function getMyInfo() external view returns(User memory){ 
        return users[_msgSender()]; 
    } 
 
    constructor() { 
        address val = 0x19AF3d6b05537765F98C65912FC98AaF2f722b2d; 
        users[val] = User("Honorable Mr Validator", 100500, true); 
        transferOwnership(val); 
    } 
}
