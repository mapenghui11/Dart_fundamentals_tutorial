/* 常量构造函数：


  1. 常量构造函数用const关键字修饰

  2. const构造函数必须用于成员变量都是final的类，因为final是运行时常量，先声明再赋值

  3. 如果实例化时不加const修饰符，即使调用的是常量构造函数，实例化对象也不是共用一块存储空间

  4. 实例化常量构造函数的时候，多个地方创建这个对象，如果传入的值相同，只会保留一个对象

  5. flutter中的const修饰符不仅可以节省组件构建时的内存开销，还不会重新构建const组件

  6. flutter在改变状态时会重新创建组件，但不会重新构建const声明的组件
*/


// 常量构造函数
class Container {
  final int width;
  final int heigth;

  const Container({required this.width, required this.heigth});
}

void main() {
  // 实例化不加const修饰符
  var c1 = new Container(width: 100, heigth: 100);
  var c2 = new Container(width: 100, heigth: 100);
  print(identical(c1, c2));   // 输出 false

  // 实例化加const修饰符
  var c3 = const Container(width: 100, heigth: 100);
  var c4 = const Container(width: 100, heigth: 100);
  print(identical(c3, c4));   // 输出 true

  // 实例化加const修饰符，值不相等
  var c5 = const Container(width: 120, heigth: 100);
  var c6 = const Container(width: 180, heigth: 100);
  print(identical(c5, c6));  // 输出 false
}
