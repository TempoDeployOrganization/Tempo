// StudentTest Class (StudentTest.cls)
@isTest
public class StudentTest {

    @isTest
    static void testStudentCreation() {
        // Test creating a new student
        Student myStudent = new Student('John', 'Doe', 18, 'Senior');
        System.assertEquals('John', myStudent.firstName);
        System.assertEquals('Doe', myStudent.lastName);
        System.assertEquals(18, myStudent.age);
        System.assertEquals('Senior', myStudent.gradeLevel);
    }

    @isTest
    static void testDisplayStudentInfo() {
        // Test displaying student information
        Student myStudent = new Student('Jane', 'Smith', 17, 'Junior');
        
        // Check if the expected information is returned
        String studentInfo = myStudent.displayStudentInfo();
        System.assert(studentInfo.contains('Jane Smith'));
        System.assert(studentInfo.contains('Age: 17'));
        System.assert(studentInfo.contains('Grade Level: Junior'));
    }
}