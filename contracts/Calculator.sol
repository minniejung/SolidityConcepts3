// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./AbstractCalculator.sol";
// import "./MathLibrary.sol";

contract Calculator is AbstractCalculator {
    function calculate(
        uint256 a,
        uint256 b,
        string memory operation
    ) public pure returns (uint256) {
        bytes32 op = keccak256(abi.encodePacked(operation));

        if (op == keccak256(abi.encodePacked("add"))) {
            return add(a, b);
        } else if (op == keccak256(abi.encodePacked("subtract"))) {
            return subtract(a, b);
        } else if (op == keccak256(abi.encodePacked("multiply"))) {
            return multiply(a, b);
        } else if (op == keccak256(abi.encodePacked("divide"))) {
            return divide(a, b);
        } else {
            revert("Invalid operation");
        }
    }
}

// contract Calculator {
//     function calculate(
//         uint256 a,
//         uint256 b,
//         string memory operation
//     ) public pure returns (uint256) {
//         bytes32 op = keccak256(abi.encodePacked(operation));

//         if (op == keccak256(abi.encodePacked("add"))) {
//             return MathLibrary.add(a, b);
//         } else if (op == keccak256(abi.encodePacked("subtract"))) {
//             return MathLibrary.subtract(a, b);
//         } else if (op == keccak256(abi.encodePacked("multiply"))) {
//             return MathLibrary.multiply(a, b);
//         } else if (op == keccak256(abi.encodePacked("divide"))) {
//             return MathLibrary.divide(a, b);
//         } else {
//             revert("Invalid operation");
//         }
//     }
// }
