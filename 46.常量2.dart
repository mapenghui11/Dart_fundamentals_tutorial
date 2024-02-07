/* dart的常量：final和const修饰符

  1. const声明的常量是在编译时确定的，永远不会改变

  2. final声明的常量允许声明后再赋值，赋值后不可改变，是运行时常量，并且有const常量的特性

*/

/* dart中core库identical函数：检查两个引用是否指向同一个对象，即两个实例是否共用一个存储空间
  共用一个存储空间的条件： 1. 常量  2. 同一个值
*/ 

void main() {
  // 实例化构造函数
  var o1 = new Object();
  var o2 = new Object();
  print(identical(o1, o2)); // 输出 false

  // 实例化常量构造函数
  var o3 = const Object();
  var o4 = const Object();
  print(identical(o3, o4)); // 输出 true，o3和o4共享存储空间


  const a = [2];
  const b = [2];
  print(identical(a, b));                  // 输出 true(前提是a和b的值相等)
  print(identical(const [2], const [2]));  // 另一种写法，输出 true

  // const关键字在多个地方创建相同的对象的时候，内存中只保留了一个对象
}
