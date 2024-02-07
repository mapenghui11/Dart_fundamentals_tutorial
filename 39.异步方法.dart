/* 异步编程：async和await

  1. async是让方法变成异步，await是等待异步方法执行完成

  2. 只有async方法才可以使用await关键字调用方法

  3. 如果调用async方法必须使用await关键字

*/


// 定义一个异步方法
testAsync() async {
  return 'Hello async';
}

void main() async {
  // 调用一个异步方法
  var result = await testAsync();
  print(result);
}
