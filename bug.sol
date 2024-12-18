function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  emit TransferOwnership(_owner, newOwner);
  _owner = newOwner;
}

//Bug: Missing check for the case where the caller is not the current owner

// The transferOwnership function in an Ownable contract should check if the caller is the current owner before transferring ownership.  This prevents unauthorized transfers.

//The bug is that anyone can call the transferOwnership function without needing to be the owner, potentially leading to malicious actors changing ownership of the contract.