// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./SimpleStorage.sol";

contract ExtraStorage is
    SimpleStorage //this is inheritance
{
    function store(uint256 _favNum) public override {
        //two keyword use override to child and virtual to parent
        favNum = _favNum + 5;
    }
}
