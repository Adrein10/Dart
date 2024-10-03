
abstract class Animal{
  void sound(){
    print("sound not define");
  }
}
class Cat extends Animal{
  @override
  void sound(){
    print("Cat make his own voice like maow");
  }
}
class Dog extends Animal{
  @override
  void sound(){
    print("Dog make his own voice like bark");
  }
}
void main(){
  Cat bily = new Cat();
  bily.sound();
}