/*  Flutter2.2.0之后的版本都要求使用null safety（空安全）

  Null safety:  ?可空类型：允许变量、方法的参数为空
                !类型断言：判断是否为空

*/

// ?可空类型：String?表示允许方法返回空值
String? getData(apiUrl) {
  if (apiUrl != null) {
    return 'this is server data';
  }
  return null;
}

// !类型断言：判断str是否为空，为空抛出异常，使用try...catch捕获异常
void printLength(String? str) {
  // print(str!.length);
  try {
    print(str!.length);
  } catch (e) {
    print('str is null');
  }
}

void main() {
  // 直接将空赋值给非空的a会报错
  // int a = 123;
  // a = null;

  // ?可空类型：String?表示name是一个可空类型
  String? name = '张三';
  name = null;
  print(name);

  // 调用getData方法，传入null程序没有报错
  print(getData('aaa'));
  print(getData(null));

  // !类型断言：str!.length表示判断str是否为空，不为空则打印str的长度，为空则抛出异常
  String? str = 'this is str';
  // str = null;
  print(str!.length);

  printLength(null); // 抛出异常
  printLength('str');
}
