# Unauthorized Ownership Transfer in Ownable Contract

This repository demonstrates a common bug in Solidity smart contracts: the lack of an ownership check in the `transferOwnership` function of an Ownable contract.

## Bug Description

The `transferOwnership` function, as implemented in `bug.sol`, allows any address to call the function and change the ownership of the contract.  A properly implemented `transferOwnership` function should only allow the current owner to transfer ownership.

## Vulnerability

This vulnerability allows malicious actors to steal control of the contract, potentially leading to the loss of funds or other assets.

## Solution

The `bugSolution.sol` file demonstrates a corrected implementation of the `transferOwnership` function.  It includes a check to ensure that only the current owner can call the function.