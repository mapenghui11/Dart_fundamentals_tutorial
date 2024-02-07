// dart中类的继承中super关键字的使用：实例化子类的时候给父类传参

// 如果想要在类中动态传入参数，但是子类不能继承父类的构造函数
class Person {
  String name;
  num age;

  Person(this.name, this.age);

  void getInfo() {
    print('${this.name}---${this.age}');
  }
}

// 定义一个子类Web继承自父类Person
class Web extends Person {
  // 定义一个子类的构造函数，super表示执行构造函数之前，将赋值给子类的参数赋值给父类
  Web(super.name, super.age);
}

main() {
  Web w = new Web('张三', 18);
  w.getInfo();
}
