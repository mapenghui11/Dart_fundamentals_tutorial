// late关键词用于延迟初始化，可以用于类和接口

// =====不使用late关键字，使用构造函数
// class Person {
//   // 定义两个属性
//   String name;
//   int age;

//   // 构造方法：初始化传入name和age
//   Person(this.name, this.age);

//   // 定义一个方法，返回值是String类型，返回name和age
//   String getName() {
//     return '${this.name}-${this.age}';
//   }
// }

// void main() {
//   // 实例化Person类并传入参数
//   Person p = new Person('张三', 20);
//   // 调用方法
//   print(p.getName());
// }


// =====使用late关键字和构造函数
class Person {
  // 定义两个属性
  // 没有构造函数（构造函数在类Person被实例化时传参）需要late关键词表示延迟初始化，即在类被实例化后再进行赋值，初始化方法
  late String name;
  late int age;

  // 构造方法：初始化传入name和age
  // Person(this.name, this.age);

  // 定义一个修改参数的方法
  void setName(String name, int age) {
    this.name = name;
    this.age = age;
  }

  // 定义一个方法，返回值是String类型，返回name和age
  String getName() {
    return '${this.name}-${this.age}';
  }
}

void main() {
  // 存在构造函数：实例化Person类并同时传入参数
  // Person p = new Person('张三', 20);

  // 没有构造函数不能在类实例化时传入参数
  Person p = new Person();
  // 在类实例化后调用setName方法传入参数
  p.setName('张三', 20);

  // 调用getName方法
  print(p.getName());
}
