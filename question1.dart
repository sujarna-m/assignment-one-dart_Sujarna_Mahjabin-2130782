String name = "Sujarna";
int age = 25;
double height = 5.5;
bool isStudent = true;

double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

String getGrade(int score) {
  if (score >= 90 && score <= 100) {
    return "A";
  } else if (score >= 80 && score < 90) {
    return "B";
  } else if (score >= 70 && score < 80) {
    return "C";
  } else if (score >= 60 && score < 70) {
    return "D";
  } else if (score < 60) {
    return "F";
  } else {
    return "Invalid Score";
  }
}
void main() {
  name = "Sujarna";
  age = 25;
  height = 5.5;
  isStudent = true;
  double bmi = calculateBMI(150.0, 5.5);
  String grade = getGrade(90);
  print("My name is: $name, my age is around: $age,my height is: $height, am I a student? : $isStudent");
  print("BMI: $bmi");
  print("Grade: $grade");
}