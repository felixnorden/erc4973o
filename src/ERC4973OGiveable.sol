// SPDX-License-Identifier: CC0-1.0
pragma solidity ^0.8.8;

import {SignatureChecker} from "openzeppelin-contracts/utils/cryptography/SignatureChecker.sol";
import {EIP712} from "openzeppelin-contracts/utils/cryptography/EIP712.sol";
import {BitMaps} from "openzeppelin-contracts/utils/structs/BitMaps.sol";

import {IERC4973Giveable} from "./interfaces/IERC4973Giveable.sol";
import {ERC4973O} from "./ERC4973O.sol";

bytes32 constant AGREEMENT_HASH = keccak256(
    "Agreement(address active,address passive)"
);

/// @notice Simple example implementation of `IERC4973Giveable`.
///         `IERC4973Takeable` and `IERC4973Exchangeable` can both be implemented similarly.
contract ERC4973OGiveable is ERC4973O, IERC4973Giveable {
    constructor(
        string memory name,
        string memory symbol,
        string memory version
    ) ERC4973O(name, symbol, version) {}

    function give(
        address to,
        bytes calldata signature
    ) external payable returns (uint256) {
        // do any required checks here apart from what `_give` already does
        return _give(to, signature);
    }
}
