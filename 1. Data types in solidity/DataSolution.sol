// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.12;

import "IDataTypesPractice.sol";

contract DataSolution is IDataTypesPractice {
    int256 varInt256 = -10**8;
    uint256 varUint256 = 10**18;
    int8 varInt8 = -3;
    uint8 varUint8 = 200;
    bool varBool = true;
    address varAddress = address(1);
    bytes32 varBytes32 = "Hello World!";
    uint256[5] varArrUint5 = [1,2,3,4,5];
    uint256[] varArrUint = [1,2,3];
    string varStr = "Hello World!";

    function getInt256() external view returns(int256){
        return varInt256;
    }
    function getUint256() external view returns(uint256){
        return varUint256;
    }
    function getIint8() external view returns(int8){
        return varInt8;
    }
    function getUint8() external view returns(uint8){
        return varUint8;
    }
    function getBool() external view returns(bool){
        return varBool;
    }
    function getAddress() external view returns(address){
        return varAddress;
    }
    function getBytes32() external view returns(bytes32){
        return varBytes32;
    }
    function getArrayUint5() external view returns(uint256[5] memory){
        return varArrUint5;
    }
    function getArrayUint() external view returns(uint256[] memory){
        return varArrUint;
    }
    function getString() external view returns(string memory){
        return varStr;
    }
    function getBigUint() external pure returns(uint256){
        uint256 v1 = 1;
        uint256 v2 = 2;
        unchecked {return uint256(v1-v2);}
    }
}