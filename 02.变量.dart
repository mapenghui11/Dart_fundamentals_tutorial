/* dart变量

 dart可以不先预先定义变量类型，会自动类型倒推，dart会进行类型校验

 dart中可以通过var关键字来声明变量，不需要声明变量类型
 如：var str_ = 'hellodart';
*/

void main() {
  // 使用var关键字声明变量
  var str_ = 'hellodart';
  print(str_);

  var num_ = 123;
  print(num_);

  // 使用变量类型声明变量
  String str_1 = 'hellodart';
  print(str_1);

  int num_1 = 123;
  print(num_1);
}
