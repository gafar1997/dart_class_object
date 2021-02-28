import 'dart:io';

void main(){
  //identifier
  kalkulatorDart app;
  app = kalkulatorDart();
  var a;
  print('masukan nilai');
  var i = int.tryParse(stdin.readLineSync());
  print('operator ?');
  var x = stdin.readLineSync();
  print('masukan nilai');
  var ii = int.tryParse(stdin.readLineSync());
  var p = i.toString()+' '+x.toString()+' '+ii.toString()+' = ';
  //validate input dangan percabangan switch
  switch(x){
    case '+':
      a = app.operatorTambah(i, ii);
      break;
    case '-':
      a = app.operatorKurang(i, ii);
      break;
    case '*':
      a = app.operatorKali(i, ii);
      break;
    case '/':
      a = app.operatorBagi(i, ii);
      break;
    default:
      print('operator tidak valid !');
      p = '';
  }
  //output
  print(p+a.toString());
}

class kalkulatorDart{
  //function
  int operatorTambah(int value, int value2){
    return value + value2;
  }
  //lambda expression
  int operatorKurang(int value, int value2) => value - value2;
  int operatorKali(int value, int value2) => value * value2;
  double operatorBagi(int value, int value2) => value / value2;
}