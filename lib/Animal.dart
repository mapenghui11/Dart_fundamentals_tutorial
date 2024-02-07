// dart中没有public,private,protected这些访问修饰符，但是可以使用_把属性和方法定义成私有

// _name为私有变量，_run()为私有方法
class Animal {
  String _name;
  int age;

  Animal(this._name, this.age);

  void getInfo() {
    print('${this._name}--${this.age}');
  }

  String getName() {
    return this._name;
  }

  void _run() {
    print('这是一个私有方法');
  }

  execRun() {
    this._run();
  }
}
