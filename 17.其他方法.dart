void main() {
  // === 匿名方法  没有方法名
  var printNum = (int n) {
    print(n + 123);
  };
  printNum(2);

  // === 自执行方法   基本语法：((){方法体})()
  (() {
    print('我是自执行方法');
  })();

  // 也可以传入形参和实参
  ((int n) {
    print(n);
  })(12); // 输出12

  // === 方法的递归  可以调用自己的方法
  // 计算5的阶乘
  var sum = 1;
  fn(int n) {
    sum *= n;
    if (n == 1) {
      return;    // 当n=1时，结束递归
    }

    fn(n - 1);   // 在方法内调用 fn(4),fn(3)...
  }

  fn(5);
  print(sum);
}
