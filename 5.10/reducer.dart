import 'dart:io';
class markper{
  void Percentage(int totalnumber,int sum_number){
    print("Percentage");
  }
}

class classthree extends markper{
  @override
  void Percentage(int totalnumber,int sum_number) {
    var per = (totalnumber / sum_number) * 100;
    print("Percentage is $per");
  }
}
int obtainmark(int subject){

  List<int> marks = [];

  for(var i = 1;i <= subject;i++){
    print("Enter Subject number of $i");
    int mark = int.parse(stdin.readLineSync()!);

    marks.add(mark);
  }
  int totalmark = marks.reduce((value, element) => element + value);
  return totalmark;

}
main(){
  print("Enter how many subjuects you want give number for sum or substract: ");
  int uservalue = int.parse(stdin.readLineSync()!);
  // multiplying user value to 100 for percentage 
  int mulvalue = uservalue *100;

  // sum of user subject mark 
  int sum_mark = obtainmark(uservalue);
  
  // Outputs
  print("\n\n----------Total-Sum----------\n");
  print(sum_mark);
  classthree clsthree = new classthree();
  clsthree.Percentage(sum_mark, mulvalue);
}