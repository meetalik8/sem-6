void eveNo(List nums){
  for(int i=0;i<nums.length;i++){
    if(nums[i]%2==0){
      print(nums[i]);
    }
  }
}
void main() {
  var nums=[1,2,3,4,5,6];
  eveNo(nums);
}
