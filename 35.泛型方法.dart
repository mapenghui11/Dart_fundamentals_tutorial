// 泛型：解决类、接口、方法的复用性，对不特定数据类型做类型校验

// getData方法中的 T 就是代表泛型，对传入参数和返回值的类型进行校验
T getData<T>(T value) {
  return value;
}

// 只会对传入参数进行校验
// getData<T>(T value) {
//   return value;
// }


void main() {
  // 在调用方法的时候指定类型，就可以对传入参数和返回值的类型进行校验

  // 表示把String赋值给了 T，这样传入参数和返回值必须是String
  print(getData<String> ('hello'));
}
