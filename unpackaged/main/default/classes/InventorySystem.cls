public class InventorySystem {

    // Define inventory item attributes
    public class InventoryItem {
        public String itemName;
        public Integer quantity;
        public Decimal price;

        // Constructor for initializing inventory items
        public InventoryItem(String name, Integer qty, Decimal cost) {
            itemName = name;
            quantity = qty;
            price = cost;
        }
    }

    // List to store inventory items
    public List<InventoryItem> inventoryList;

    // Constructor to initialize the inventory list
    public InventorySystem() {
        inventoryList = new List<InventoryItem>();
    }

    // Method to add an item to the inventory
    public void addItem(String itemName, Integer quantity, Decimal price) {
        InventoryItem newItem = new InventoryItem(itemName, quantity, price);
        inventoryList.add(newItem);
    }

    // Method to update the quantity of an existing item in the inventory
    public void updateQuantity(String itemName, Integer newQuantity) {
        for (InventoryItem item : inventoryList) {
            if (item.itemName == itemName) {
                item.quantity = newQuantity;
                break;
            }
        }
    }

    // Method to display the current inventory
    public void displayInventory() {
        System.debug('Current Inventory:');
        for (InventoryItem item : inventoryList) {
            System.debug('Item: ' + item.itemName + ', Quantity: ' + item.quantity + ', Price: $' + item.price);
        }
    }
}