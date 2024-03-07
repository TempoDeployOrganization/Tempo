//Rollback

// Student Class (Student.cls)
public class Student {
    // Properties
    // Properties
    // Test Rollback
    // 
    public String firstName { get; set; }
    public String lastName { get; set; }
    public Integer age { get; set; }
    public String gradeLevel { get; set; }
    
    // Constructor
    public Student(String firstName, String lastName, Integer age, String gradeLevel) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.gradeLevel = gradeLevel;
    }
    
    // Method to display student information
    public String displayStudentInfo() {
        return 'Name: ' + firstName + ' ' + lastName + '\nAge: ' + age + '\nGrade Level: ' + gradeLevel;
    }
}