# ERC4973O

This is a alternative implementation of the reference implementation for EIP4973 - Account-bound tokens.

Heavy inspiration has been taken from the original author Tim Daubenschütz [ERC4973](https://github.com/rugpullindex/ERC4973/blob/master/src/ERC4973.sol),
but this implementation splits up part of the interface into multiple parts to give the consumer 
more of an opt-in as to whether they want to use `give`, `take`, or both by implementing the interfaces

- `IERC4973Giveable` (for `give`)
- `IERC4973Takeable` (for `take`)
- `IERC4973Exchangeable` (for both `give` and `take`)

## Installation

Right now, easiest installation can be done through Foundry:

```
forge install felixnorden/erc4973o
```

If this gets the interest, it can also be published to npm.

