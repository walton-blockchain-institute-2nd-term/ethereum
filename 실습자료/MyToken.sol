pragma solidity >=0.4.22 <0.6.0;

contract MyToken { 

    /* This creates an array with all balances */
    mapping (address => uint256) public balanceOf;

    /* Initializes contract with initial supply tokens to the creator of the contract */
    constructor (uint256 initialSupply) public {
        balanceOf[msg.sender] = initialSupply;
    }
    
    /* Send coins */
    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] > _value);
        require(balanceOf[_to] + _value > balanceOf[_to]);
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;
        return true;
    }
}  