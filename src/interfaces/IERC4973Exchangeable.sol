// SPDX-License-Identifier: CC0-1.0
pragma solidity ^0.8.6;

import {IERC4973Giveable} from "./IERC4973Giveable.sol";
import {IERC4973Takeable} from "./IERC4973Takeable.sol";

/**
 * @title Exchangeable account-bound tokens
 *  @dev See https://eips.ethereum.org/EIPS/eip-4973
 *  Note: the ERC-165 identifier for this interface is TODO: identifier
 */
interface IERC4973Exchangeable is IERC4973Giveable, IERC4973Takeable {}
