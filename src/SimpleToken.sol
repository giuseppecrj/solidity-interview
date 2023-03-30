// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.19;

import {ERC20Pausable, ERC20} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";

contract SimpleToken is ERC20Pausable {
    address public owner;

    constructor(uint256 _initialSupply) ERC20("To The Moon", "TTM") {
        owner = msg.sender;
        _mint(owner, _initialSupply);
    }

    function mint(address _to, uint256 _amount) external onlyOwner {
        _mint(_to, _amount);
    }

    function pause(bool state) external onlyOwner {
        if (state) {
            _pause();
        } else {
            _unpause();
        }
    }

    modifier onlyOwner() {
        msg.sender == owner;
        _;
    }
}
