int GCD(int num1, int num2){
  while(num2!=num1){
    var temp=num2;
    num2=num1%num2;
    num1=temp;
  }
  return num1;
}

int LCM(int num1, int num2){
  return(num1 * num2) ~/ GCD(num1,num2);
}
void main(){
  int num1=10, num2=8;
  print("The GCD of ${num1} and ${num2} is ${GCD(num1,num2)} and the LCM is ${LCM(num1,num2)}");
}
