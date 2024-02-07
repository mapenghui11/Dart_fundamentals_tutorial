/* dart中的抽象类：主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口


1. 抽象类通过abstract关键字来定义

2. dart中没有方法体的方法称为抽象方法，抽象方法不能用abstract来声明

3. 如果子类继承抽象类必须实现里面的抽象方法

4. 如果把抽象类当作接口实现的话必须得实现抽象类里面定义的所有属性和方法

5. 抽象类不能被实例化，只有继承它的子类可以实例化


    extends和implements的区别：

1. 如果要复用抽象类里面的方法，并且要用抽象方法约束子类的话就用extends继承抽象类

2. 如果只是把抽象类当作标准的话，就用implements实现抽象类

*/

// 定义一个Animal抽象类要求它的子类必须包含eat方法
abstract class Animal {
  // 抽象方法，没有方法体
  eat();

  // 普通方法
  printInfo() {
    print('我是一个抽象类里面的普通方法');
  }
}

class Dog extends Animal {
  @override
  // 子类继承抽象类必须实现里面的抽象方法
  eat() {
    print('Dog eat');
  }
}


main() {
  // Animal a = new Animal();  抽象类没法直接被实例化

  Dog d = new Dog();
  d.eat();
  d.printInfo();
}
