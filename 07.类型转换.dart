// dart类型转换

void main() {
  // === int和String类型之间的转换

  // 1. String转换成int类型  int.parse()
  String str = '123';
  var num = int.parse(str);
  print(num is int); // 输出true

  // 2. String转换成double类型  double.parse()既可以转换成double类型又可以转换成int类型
  String str_ = '123.12';
  var num_ = double.parse(str);
  print(num_ is double); // 输出true

  // 3. String类型的值为空值
  String str1 = '';
  try {
    var num1 = double.parse(str1);
    print(num1);
  } catch (err) {
    // try...catch:当String类型的值为空值进行转换会报错，使用异常捕获输出0
    print(0);
  }

  // 4. int转换成String类型  toString
  var num2 = 12;
  var str2 = num2.toString();
  print(str2 is String);

  // 5.其他类型转换成bool类型
  // isEmpty:判断字符串是否为空
  var str3 = '';
  if (str3.isEmpty) {
    print('str3 is empty');
  } else {
    print('str3 is not empty');
  }

  // noll:判断number是否为空
  var num3;
  if (num3==null) {
    print('num3 is empty');
  } else {
    print('num3 is not empty');
  }

  // isNaN:判断number是否为NaN
  var num4 = 0/0;
  if (num4.isNaN) {
    print('num4 is empty');
  } else {
    print('num4 is not empty');
  }
}
