String numToWord(int num){
  List<String> units=["zero","one","two","three","four","five","six","seven","eight","nine"];
  List<String> twenties=["Ten","Eleven","Twelve","Thirteen","Fourteen","Fifteen","Sixteen","Seventeen","Eighteen","Nineteen"];
  List<String> tens=["","","Twenty","Thirty","Fourty","Fifty","Sixty","Seventy","Eighty","Ninety"];
  if(num<10 && num>0){
    return units[num];
  }else if(num<20){
    return twenties[num-10];
  }else if(num<100){
    return "${tens[num~/10]} ${[num%10]}";
  }else {
    return "Cannot convert above 99!";
  }
}
void main(){
  int num=13;
  print("The number in word is ${numToWord(num)}");
}
