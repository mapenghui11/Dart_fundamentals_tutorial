/* ===dart命名规则
  1. 变量名称必须由数字、字母、下划线、美元符（💲）组成
  2. 标识符开头不能是数字，如：var 2str = '1234';
  3. 标识符不能是保留字和关键字， 如：var if = '1234';
  4. 变量的名字是去分大小写的，如 age 和 Age 是不同的变量
*/

/* ===dart常量：final和const修饰符

  常量：永远不改变的量，用final和const修饰，不能被改变

  final和const的区别：const在一开始就会被赋值，而final是运行时常量，
  在运行时第一次使用前才初始化，只能被赋值一次
*/

void main() {
  const PI = 3.1415;
  // PI = 1234;  尝试修改常量的值会报错
  print(PI);

  final PI_ = 3.1415;
  // PI = 1234;  final修饰的常量和const一样
  print(PI_);


  final current_time = new DateTime.now();
  print(current_time);   // 打印出了当前时间2023-12-05 19:52:06.540327

  // const currentTime = new DateTime.now();  当调用方法赋值给const常量，会报错
}
