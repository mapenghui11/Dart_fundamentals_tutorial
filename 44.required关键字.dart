/*  required关键字：主要用于标记任何命名参数（函数或类），使他们不为空
*/

// 命名参数方法，给age和sex参数传入默认值
String printUserInfo(String name, {int age = 10, String sex = 'man'}) {
  return 'name:$name, age:$age, sex:$sex';
}

// 给命名参数加上required关键字，表示一定要传入值的参数，所以不用设置默认值
String printInfo(String name, {required int age, required String sex}) {
  return 'name:$name, age:$age, sex:$sex';
}

void main() {
  // 调用printUserInfo方法，可以不传入命名参数，因为有默认值，也可以传入命名参数值修改默认值
  print(printUserInfo('张三'));
  print(printUserInfo('张三', age: 20, sex: 'woman'));

  print(printInfo('李四', age: 30, sex: 'man'));
}


