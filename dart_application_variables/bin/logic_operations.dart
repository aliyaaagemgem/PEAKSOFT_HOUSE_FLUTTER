void main(){
  //logic operations (&& и, || или)
  bool isTrue = true;
  bool isFalse = false;

  var result = isTrue && isFalse;
  var result1 = isTrue && isFalse || isTrue;

  print(result1);
}