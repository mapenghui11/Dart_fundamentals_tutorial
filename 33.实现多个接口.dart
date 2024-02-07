// dart类中实现多个接口

abstract class A {
  late String name;
  // 定义一个抽象方法
  printA();
}

abstract class B {
  printB();
}

// 一个类实现多个接口：要实现所有接口的方法
class C implements A, B {
  @override
  late String name;

  @override
  printA() {
    print('print a');
  }

  @override
  printB() {
    throw UnimplementedError();
  }
}

void main() {
  C c = new C();
  c.printA();
}
