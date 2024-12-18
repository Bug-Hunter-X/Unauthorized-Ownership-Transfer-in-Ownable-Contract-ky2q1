function transferOwnership(address newOwner) {
  require(msg.sender == _owner, "Ownable: caller is not the owner");
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  emit TransferOwnership(_owner, newOwner);
  _owner = newOwner;
}

//Solution: Added check to ensure only the owner can call the function.

// The corrected transferOwnership function checks if the caller (msg.sender) is the current owner (_owner) before transferring ownership.  This prevents unauthorized transfers.