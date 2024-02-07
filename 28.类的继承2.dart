// dart中类的继承：在子类中定义自己的方法和属性

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
  // 子类的属性
  String? sex;

  /* : super(name, age)表示执行构造函数之前，
    将赋值给子类的参数赋值给父类，命名构造函数也能使用super进行传参
  */ 
  Web(String name, num age, String sex) : super(name, age) {
    this.sex = sex;
  }

  // 子类的方法
  run() {
    print('${this.name}---${this.age}---${this.sex}');
  }
}


main() {
  Web w = new Web('张三', 18, '男');

  // 分别调用父类的方法和子类的方法
  w.getInfo();
  w.run();
}
