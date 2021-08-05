class Adder {
  late int num1;
  late int num2;

  Adder(this.num1, this.num2);

  int somar(){
    return num1 + num2;
  }

  set numer1(num num1) => this.num1;
  set numer2(num num2) => this.num2;


}