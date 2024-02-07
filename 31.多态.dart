/* dart中的多态：
  1. 多态就是父类定义一个方法不去实现，让继承它的子类去实现，每个子类有不同的表现

  2. 允许将子类的指针赋值给父类类型的指针，同一个函数调用会有不同的执行结果

  3. 子类的实例赋值给父类的引用

*/

// 父类定义一个方法不去实现
abstract class Animal {
  eat();
}

// 让继承它的子类去实现，每个子类有不同的表现
class Dog extends Animal {
  @override
  eat() {
    print('Dog eat');
  }

  run() {
    print('Dog run');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('Cat eat');
  }

  run() {
    print('Cat run');
  }
}

main() {
  // Dog d = new Dog();
  // d.eat();
  // d.run();

  Cat c = new Cat();
  c.eat();
  c.run();

  // 将子类的实例赋值给父类的引用，让子类只能调用父类中有的方法
  Animal d = new Dog();
  d.eat();  // 这时 d.run(); 会报错
}
