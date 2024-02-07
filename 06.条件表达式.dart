// 条件表达式

void main() {
  // if...else
  var score = 85;

  if (score > 90) {
    print('优秀');
  } else if (score > 70) {
    print('良好');
  } else if (score >= 60) {
    print('及格');
  } else {
    print('不及格');
  }

  // switch...case...default
  var sex = 'boy';

  switch (sex) {
    case 'boy':
      print('sex is boy');
      break;
    case 'girl':
      print('sex is girl');
      break;
    default:
      print('mistake');
      break;
  }

  // 三目运算符
  int n = 1;
  var m;

  if (n == 1) {
    m = 'n=1';
  } else {
    m = 'n!=1';
  }
  print(m); // 用if...else实现

  int a = 1;
  String b = a == 1 ? 'i am true' : 'i am false';
  print(b); // 用三目运算符实现，如果a=1，把'i am true'赋值给b，否则把'i am false'赋值给b

  // ??运算符
  var c;
  var d = c ?? 10;
  print(d);    // 如果c为空，把10赋值给d

  var e = 11;
  var f = e ?? 10;
  print(f);  // 如果e不为空，把e的值赋给f

}
