void main() {
  var num = 123;
  var n = num, remainder;

  while (num > 0) {
    int r = num % 10;
    num = (num / 10).floor();
    if (r == 0) {
      print("zero");
    } else if(r == 1){
      print("one");
    } else if(r == 2){
      print("two");
    } else if(r == 3){
      print("three");
    } else if(r == 4){
      print("four");
    } else if(r == 5){
      print("five");
    } else if(r == 6){
      print("six");
    } else if(r == 7){
      print("seven");
    } else if(r == 8){
      print("eight");
    } else if(r == 9){
      print("nine");
    }
  }
}
