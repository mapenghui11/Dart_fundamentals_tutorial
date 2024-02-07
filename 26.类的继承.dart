/* dart中类的继承：
  1. 子类使用extends关键词来继承父类
  2. 子类会继承父类里面可见的属性和方法，但是不会继承构造函数
  3. 子类能复写父类的方法，getter和setter
  4. 子类可以定义自己的方法和属性

*/

class Person {
  String name = '张三';
  num age = 20;

  void getInfo() {
    print('${this.name}---${this.age}');
  }
}

// 定义一个子类Web继承自父类Person
class Web extends Person {}

main() {
  Web w = new Web();

  // 继承了父类可见的属性和方法
  print(w.name);
  w.getInfo();
}
