

import 'dart:io';

void main(){
    print("Enter Student Name");
    String Name = stdin.readLineSync() ?? "unidentified";

    print("Enter Student Age");
    int Age = int.parse(stdin.readLineSync() ?? "0");

    print("Enter Student Obtain Marks");
    double Marks = double.parse(stdin.readLineSync() ?? "0.0");

    print("Student Percentage");
    double Percentage = Marks / 500 * 100;

    print("\n\n-----------Student Details-----------\n");

    print("Name: $Name");
    print("Age: $Age");
    print("Marks: $Marks");
    print("Percentage: $Percentage%");
    if(Percentage >= 90 && Percentage <= 100){
        print("Grade: A+");
    }else if(Percentage >= 70 && Percentage < 90){
        print("Grade: A");
    }else if(Percentage >= 60 && Percentage < 70){
        print("Grade: B");
    }else if(Percentage >= 50 && Percentage < 60){
        print("Grade: C");
    }else if(Percentage >= 45 && Percentage < 50){
        print("Grade: D");
    }else{
        print("Grade: F");
    }
}