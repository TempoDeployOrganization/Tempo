@isTest
public class InventorySystemTest {

    @isTest
    static void testInventorySystem() {
        // Create an instance of the InventorySystem
        InventorySystem inventorySystem = new InventorySystem();

        // Add items to the inventory
        inventorySystem.addItem('Item1', 10, 15.99);
        inventorySystem.addItem('Item2', 5, 10.50);

        // Display the inventory (optional, for debugging purposes)
        inventorySystem.displayInventory();

        // Update the quantity of an item
        inventorySystem.updateQuantity('Item1', 20);

        // Display the inventory again (optional, for debugging purposes)
        inventorySystem.displayInventory();

        // Perform assertions to verify the functionality
        System.assertEquals(2, inventorySystem.inventoryList.size(), 'Incorrect number of items in the inventory');
        System.assertEquals(20, inventorySystem.inventoryList[0].quantity, 'Quantity of Item1 not updated correctly');
    }
}