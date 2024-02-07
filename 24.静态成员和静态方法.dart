/* 类中的静态成员、静态方法
  1. 使用static关键字来定义静态属性和方法
  2. 静态方法只能访问静态成员和静态方法，非静态方法可以访问静态成员和非静态成员、静态方法

*/

class Person {
  // 定义静态成员和非静态成员
  static String name = '张三';
  int age = 20;

  // 定义静态方法和非静态方法
  static void show() {
    print(name);
  }

  void printInfo() {
    // 非静态方法可以访问静态成员、非静态成员、静态方法
    print(name);
    print(this.age);

    show();
  }

  static void printUserInfo() {
    // 静态方法只能访问静态成员和静态方法
    print(name);
    show();
  }
}

void main() {
  // 访问静态成员和静态方法可以直接用类进行调用，不需要进行类的实例化
  print(Person.name);
  Person.show();

  // 访问非静态方法
  Person p = new Person();
  p.printInfo();

  // 调用静态方法
  Person.printUserInfo();
}
