class Person {
  String name;
  int age;

  // ===默认构造函数：可以在初始化类时自动触发，进行赋值，只能定义一个
  Person(this.name, this.age);

  // ===命名构造函数: 可以定义多个
  // 使用初始化列表 : name = 'DefaultName', age = 0，为 name 和 age 提供了初始值
  Person.now()
      : name = 'DefaultName',
        age = 0 {
    print('我是命名构造函数');
  }

  // 使用命名构造函数重新对类属性进行赋值
  Person.setInfo(String name, int age)
      : name = 'DefaultName',
        age = 0 {
    this.name = name;
    this.age = age;
  }

  void getInfo() {
    print('person2: ${this.name}---${this.age}');
  }
}