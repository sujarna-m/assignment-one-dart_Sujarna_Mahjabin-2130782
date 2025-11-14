// Question 5: Advanced Features & Mixins (Difficulty: 5/5) ⭐⭐⭐⭐⭐
// TODO: Complete the following requirements:

// 1. Mixin Payable:
//    - Method: double calculateSalary(double baseSalary, double bonus)
//    - Method: void processPayment(double amount)
mixin Payable {
  double calculateSalary(double baseSalary, double bonus) {
    return baseSalary + bonus;
  }

  void processPayment(double amount) {
    // TODO: Process payment
    // Add your implementation here
    print("Processing payment of amount: \$${amount}");
  }
}

// 2. Mixin Reportable:
//    - Method: String generateReport(String employeeName, String department)
mixin Reportable {
  String generateReport(String employeeName, String department) {
    // TODO: Generate report
    return "Monthly report for $employeeName in $department department";
  }
}

// 3. Abstract Class Employee:
//    - Properties: String name, String id, String department
//    - Abstract method: String getJobTitle()
//    - Abstract method: double getBaseSalary()
abstract class Employee {
  String name;
  String id;
  String department;

  Employee(this.name, this.id, this.department);

  String getJobTitle();
  double getBaseSalary();

  void displayInfo() {
    print("$name (ID: $id, Department: $department)");
    print("Job Title: ${getJobTitle()}");
    print("Base Salary: ${getBaseSalary()}");
  }
}

// 4. Concrete Classes:
//    - Manager extends Employee with Payable and Reportable
//      - Additional property: int teamSize
//      - Override required methods
class Manager extends Employee with Payable, Reportable {
  int teamSize;

  Manager(String name, String id, String department, this.teamSize) : super(name, id, department);

  @override
  String getJobTitle() {
    return "Manager"; // Placeholder - replace with actual implementation
  }

  @override
  double getBaseSalary() {
    return 8000.0; // Placeholder - replace with actual implementation
  }

  @override
  void displayInfo() {
    // Add your implementation here
    super.displayInfo();
    print("Team Size: $teamSize");
  }
}

//    - Developer extends Employee with Payable
//      - Additional property: String programmingLanguage
//      - Override required methods
class Developer extends Employee with Payable {
  String programmingLanguage;

  Developer(String name, String id, String department, this.programmingLanguage) : super(name, id, department);

  @override
  String getJobTitle() {
    // TODO: Return developer job title
    return "Senior Developer"; // Placeholder - replace with actual implementation
  }

  @override
  double getBaseSalary() {
    // TODO: Return developer base salary
    return 6000.0; // Placeholder - replace with actual implementation
  }

  @override
  void displayInfo() {
    // TODO: Override to show developer-specific info
    print("Programming Language: $programmingLanguage");
    // Add your implementation here
  }
}

void main() {
  // 5. Create employees and demonstrate:
  //    - Salary calculation with bonus
  //    - Payment processing
  //    - Report generation (for managers)
  //    - Display all employee information

  Manager manager = Manager("Alice", "M001", "IT", 10);
  Developer developer = Developer("Bob", "D001", "IT", "Dart");

  print("--- Manager Info ---");
  manager.displayInfo();

  double managerSalary = manager.calculateSalary(manager.getBaseSalary(), 5000.0);
  print("Manager Salary with Bonus: \$${managerSalary}");
  manager.processPayment(managerSalary);

  String managerReport = manager.generateReport(manager.name, manager.department);
  print(managerReport);

  print("\n--- Developer Info ---");
  developer.displayInfo();

  double developerSalary = developer.calculateSalary(developer.getBaseSalary(), 3000.0);
  print("Developer Salary with Bonus: \$${developerSalary}");
  developer.processPayment(developerSalary);

  // TODO: Create employees

  // TODO: Demonstrate salary calculation with bonus

  // TODO: Display employee information

}