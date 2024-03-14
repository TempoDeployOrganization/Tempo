@isTest
public class ExampleClassTest {    
    @isTest
    static void testAdd() {
        Integer result = ExampleClass.add(5, 3);
        System.assertEquals(8, result);
    }
    
    @isTest
    static void testSubtract() {
        Integer result = ExampleClass.subtract(10, 4);
        System.assertEquals(6, result);
    }
}