import 'dart:io';

class employees{

  String? employ_name;
  String? employee_des;
  dynamic? employee_sal;
  double employee_tax = 10.0;
  void employee(){
    print("----------Employ_Info----------");
    print("Employ_Name: $employ_name");
    print("Employee_Des: $employee_des");
    if(employee_sal! > 100000 && employee_sal! < 150000){
      employee_sal = employee_sal * 5;
      print("employee_sal: $employee_sal");
      print("Employee_Tax: $employee_tax%");
    }else{
      print("Employee_Sal: $employee_sal");
      print("Employee_Tax: No Tax");
    }
  }
  
}
void main(){

    print("Enter employee Name: ");
    String inout_name = stdin.readLineSync() ?? "unidentified";
    print("Enter employee Designation: ");
    String inout_des = stdin.readLineSync() ?? "unidentified";
    print("Enter employee Salary: ");
    double inout_sal = double.parse(stdin.readLineSync() ?? "unidentified");

    employees emp = new employees();
    emp.employ_name = inout_name;
    emp.employee_des = inout_des;
    emp.employee_sal = inout_sal;
    emp.employee();
  }