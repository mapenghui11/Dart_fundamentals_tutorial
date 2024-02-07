// dart中类的继承：在子类中复写父类的方法

class Person {
  String name;
  num age;

  Person(this.name, this.age);

  void getInfo() {
    print('${this.name}---${this.age}');
  }
}

class Web extends Person {
  // 子类的属性
  String? sex;

  Web(String name, num age, String sex) : super(name, age) {
    this.sex = sex;
  }

  // 子类的方法
  run() {
    print('${this.name}---${this.age}---${this.sex}');
    super.getInfo(); // 子类方法里也可以直接调用父类的方法
  }

  // 复写父类的方法
  @override
  void getInfo() {
    print('name: ${this.name}---age: ${this.age}');
  }
}

main() {
  Web w = new Web('张三', 18, '男');

  // 会优先调用子类重写后的方法
  w.getInfo(); // 输出 name: 张三---age: 18
  w.run();
}
