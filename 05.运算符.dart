/* ===dart运算符
  算术运算符：~/（取整）  %（取余）
  关系运算符：==  != 
  逻辑运算符：！（取反）  &&（并且）  ||（或者）
  赋值运算符：=  ??=

*/
void main() {
  int a = 13;
  int b = 6;

  print(a ~/ b); // 算术运算符：取整
  print(a == b); // 关系运算符：输出false

  // 逻辑运算符
  bool flag = true;
  print(!flag); // 取反，输出false

  bool c = true;
  bool d = false;
  print(c && d); // 并且，全部为true则值为true，否则值为false，输出false

  bool e = false;
  bool f = false;
  print(e || f); // 或者，全部为false则值为false，否则值为true，输出false

  int age = 20;
  String sex = "男";
  // 如果age是20，并且sex是男，就会进行打印
  if (age == 20 && sex == "男") {
    print('$age--$sex');
  } else {
    print('');
  }

  // 只要满足一个条件，就会进行打印
  if (age == 28 || sex == "男") {
    print('$age--$sex');
  } else {
    print('');
  }

  // 赋值运算符
  int n = 4; // 如果n为空的话，把n赋值为11，输出4
  n ??= 11;
  print(n);

  int? m; // 如果n可以为空，?声明它为可空类型，m为空，输出11
  m ??= 11;
  print(m);

  // 复合赋值运算符  +=  -=  *=  /=  %=  ~/=
  var p = 6;
  print(p*=2);  //表示p=p*2
}
