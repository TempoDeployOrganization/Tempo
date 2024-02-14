@isTest
public class ProductTest {

    @isTest
    static void testProductProperties() {
        // Create an instance of the Product class
        Product testProduct = new Product();
        
        // Set values for the properties
        testProduct.name = 'Test Product';
        testProduct.price = 19.99;
        
        // Verify the values are set correctly
        System.assertEquals('Test Product', testProduct.name, 'Name not set correctly');
    }
}