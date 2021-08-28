contract TxUserWallet {
    address owner;
    constructor() {
        owner = msg.sender;
    }
    function transferTo(address dest, uint amount) public {
        require(tx.origin == owner);
        dest.transfer(amount);
    }
}