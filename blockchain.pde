void setup() {
    ArrayList<Block> blockchain = new ArrayList<Block>();
    
    String[] genesisTransactions = {"satoshi sent ivan 10 bitcoin","hal finey sent 10 bitcoins to ivan"};
    Block genesisBlock = new Block(0, genesisTransactions);
    
    String[] block2Transactions = {"ivan sent 10 bitcoin to satoshi","satoshi sent 10 bitcoin to starbucks"};
    Block block2 = new Block(genesisBlock.getBlockHash(), block2Transactions); 
    
    String[] block3Transactions = {"ivan sent 99 bitcoin to mom"};
    Block block3 = new Block(block2.getBlockHash(), block3Transactions); 
    
    print("Hash of genesis\n");
    print(genesisBlock.getBlockHash());
    
    print("\nHash of block2\n");
    print(block2.getBlockHash());
    
    print("\nHash of block3\n");
    print(block3.getBlockHash());
}

void draw() {}
