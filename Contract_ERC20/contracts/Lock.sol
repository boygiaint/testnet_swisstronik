// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract OrderlyNetwork is ERC20 {
    constructor() ERC20("OrderlyNetwork", "ORDER") {}

    function mint() public {
        _mint(msg.sender, 100 * 10 ** 18);
    }

    function burn() public {
        _burn(msg.sender, 100 * 10 ** 18);
    }
}