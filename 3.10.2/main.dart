import 'dart:io';

void main(){
  print("Enter Subjects :");
  print("Enter 1 for English or 2 for Math");
  int choose = int.parse(stdin.readLineSync()!);
  if(choose == 1){
    print("Enter Perform operator\nEnter 1 for Addition\nEnter 2 for Substraction");
    int opt = int.parse(stdin.readLineSync()!);
    if(opt == 1){
      print("Enter your first Number");
      int num1 = int.parse(stdin.readLineSync()!);
      print("Enter Your Second Number");
      int num2 = int.parse(stdin.readLineSync()!);
      int sum = num1 + num2;
      print("Total English number is $sum");
    }else if(opt == 2){
      print("Enter your first Number");
      int num1 = int.parse(stdin.readLineSync()!);
      print("Enter Your Second Number");
      int num2 = int.parse(stdin.readLineSync()!);
      int sum = num1 - num2;
      print("Total English number is $sum");
    }else{
      print("This Error contain violence");
    }
  }else if(choose == 2){
    print("Enter Perform operator\nEnter 1 for Substraction\nEnter 2 for Addition");
    int opt = int.parse(stdin.readLineSync()!);
    if(opt == 1){
      print("Enter your first Number");
      int num1 = int.parse(stdin.readLineSync()!);
      print("Enter Your Second Number");
      int num2 = int.parse(stdin.readLineSync()!);
      int sum = num1 - num2;
      print("Total Math number is $sum");
    }else if(opt == 2){
      print("Enter your first Number");
      int num1 = int.parse(stdin.readLineSync()!);
      print("Enter Your Second Number");
      int num2 = int.parse(stdin.readLineSync()!);
      int sum = num1 + num2;
      print("Total Math number is $sum");
    }else{
      print("This Error contain violence");
    }
  }else{
    print("This Error contain violence");
  }
}