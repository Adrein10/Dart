import 'dart:io';
abstract class Student {
  String name;
  int rollNumber;

  Student(this.name, this.rollNumber);

  void displayStudentInfo() {
    print("Name: $name");
    print("Roll Number: $rollNumber");
  }
}


class Marksheet extends Student {
  int mathsMark;
  int scienceMark;
  int englishMark;

  Marksheet(String name, int rollNumber, this.mathsMark, this.scienceMark, this.englishMark)
      : super(name, rollNumber);

  void displayMarks() {
    print("Maths Mark: $mathsMark");
    print("Science Mark: $scienceMark");
    print("English Mark: $englishMark");
  }

  void calculateTotal() {
    int total = mathsMark + scienceMark + englishMark;
    print("Total Marks: $total");
  }

  void calculatePercentage() {
    double percentage = (mathsMark + scienceMark + englishMark) / 3;
    print("Percentage: ${percentage.toStringAsFixed(2)}%");
  }
}

void main() {

  print("Enter student name:");
  String name = stdin.readLineSync()!;
  print("Enter roll number:");
  int rollNumber = int.parse(stdin.readLineSync()!);
  print("Enter maths mark:");
  int mathsMark = int.parse(stdin.readLineSync()!);
  print("Enter science mark:");
  int scienceMark = int.parse(stdin.readLineSync()!);
  print("Enter english mark:");
  int englishMark = int.parse(stdin.readLineSync()!);

  Marksheet marksheet = Marksheet(name, rollNumber, mathsMark, scienceMark, englishMark);


  marksheet.displayStudentInfo();
  marksheet.displayMarks();


  marksheet.calculateTotal();
  marksheet.calculatePercentage();
}