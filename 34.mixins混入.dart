/* dart中的mixins：在类中混入其他功能，可以实现类似多继承的功能（dart没有多继承）


1. 作为mixins的类只能继承自object，不能继承其他类

2. 作为mixins的类不能有构造函数

3. 一个类可以mixins多个mixins类

4. mixins的实例类型就是其超类的子类型

*/

// 用mixin关键字声明mixins类，A类和B类不能继承其他类
mixin A {
  String info = 'this is a';

  void printA() {
    print('a');
  }
}

mixin B {
  void printB() {
    print('b');
  }
}

class Person {
  String name;
  num age;

  Person(this.name, this.age);

  printInfo() {
    print('${this.name}-${this.age}');
  }
}


// 直接继承mixins类
// class C with A, B {}

// 继承普通类同时继承mixins类
class C extends Person with A, B {
  C(super.name, super.age);
}

void main() {
  C c = C('张三', 20);
  c.printA(); // 调用来自 mixin A 的方法
  c.printB();
  c.printInfo();
  print(c.info);

  // 如果A、B、Person类中存在相同的方法，会调用后面的类的方法
}
