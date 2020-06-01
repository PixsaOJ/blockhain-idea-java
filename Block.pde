import java.util.Arrays;

class Block {
    
    private int previusHash;
    private String[] transactions;
    
    private int blockHash;
    
    public Block(int previusHash, String[] transactions) {
        this.previusHash = previusHash;
        this.transactions = transactions;
        
        Object[] contens = {Arrays.hashCode(transactions), previusHash};
        this.blockHash = Arrays.hashCode(contens);
    }
    
    public int getPreviusHash() {
        return previusHash;
    }
    
    public String[] getTransaction() {
        return transactions;
    }
    
    public int getBlockHash() {
        return blockHash;
    }
}
