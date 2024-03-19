public class RollbackSessionExample {
    public String name {get; set;}
    public Integer numberOfRooms {get; set;}
    public Decimal rent {get; set;}
    
    // Constructor
    public RollbackSessionExample(String aptName, Integer rooms, Decimal monthlyRent) {
        name = aptName;
        numberOfRooms = rooms;
        rent = monthlyRent;
    }
    
    // Method to calculate yearly rent
    public Decimal calculateYearlyRent() {
        return rent * 12;
    }
}