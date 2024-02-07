/* dart中的对象操作符：
  1. ?    条件运算符
  2. as   类型转换
  3. is   类型判断
  4. ..   级联操作
*/

class Person {
  String name;
  num age;

  Person(this.name, this.age);

  void getInfo() {
    print('${this.name}---${this.age}');
  }
}

main() {
  Person p = new Person('张三', 20);

  // === ?对象操作符
  // p?.getInfo();    p?表示当p没有被赋值（空）时，不会报错


  // === is类型判断操作符
  if (p is Person) {
    p.name = '李四';
  }
  p.getInfo();


  // === as类型转换操作符
  var p1;
  p1 = '';
  p1 = new Person('张三', 20);
  // 将p1从String转换成Person类型
  (p1 as Person).getInfo();


  // === ..连缀操作符
  Person p2 = new Person('张三', 30);
  p2.name = '李四';
  p2.age = 28;
  p2.getInfo();

  // 上面这段重新赋值代码用..操作符简化后，如下：
  p2
    ..name = '李四'
    ..age = 30
    ..getInfo();
}
