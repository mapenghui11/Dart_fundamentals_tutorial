// 类：一个类通常由属性和方法组成

// 定义一个Person类，类名称首字母要大写
class Person {
  // 定义类属性
  String name = '张三';
  int age = 20;

  // 定义一个输出属性的类方法
  void getInfo() {
    print('${this.name}---${this.age}');
    // 在方法里调用属性可以使用this关键来获取属性，{}表示打印一个整体
  }

  // 定义一个修改属性的类方法
  void setInfo(int age) {
    this.age = age; // 将传入的参数赋值给类属性中的age
  }

  // 类的构造函数：实例化类的时候自动触发的方法
  Person() {
    print('这是构造函数');
  }
}

void main() {
  /* 
  List list = [];
  list.isEmpty;
  list.add('python');

  List就是一个系统提供的类，有属性也有方法
  */

  // 使用类之前要先实例化
  var person = new Person();
  /*
  Person person = new Person();
  也可以用Person类做为实例类型，和List一样
  */

  // 调用类的属性和方法
  print(person.name);

  person.setInfo(25);
  person.getInfo(); // 输出 张三---25
}
