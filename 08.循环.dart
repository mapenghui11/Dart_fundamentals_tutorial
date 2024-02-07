void main() {
  // ++自增 1   --自减 1
  var a = 10;
  a++; // a = a + 1
  print(a);

  var i = 10;
  var b = i++;
  print(i); // 11
  print(b); // 10，在赋值运算中，++在i后面，先将i的值赋给b，再进行自增

  var c = 10;
  var d = ++c;
  print(c); // 11
  print(d); // 11，在赋值运算中，++在c前面，先自增，再赋值

  /* for循环
    for (int i = 1; i < 100; i++) {
      print(i);
    }

    1. 声明变量 int i = 1
    2. 判断 i < 100
    3. print(i);
    4. i++ 自增
  */

  // 打印 0-30所有的偶数
  for (int i = 0; i <= 30; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }

  // 求 1+2+3+...+1000的和
  var sum = 0;
  for (int i = 0; i <= 1000; i++) {
    sum += i;
  }
  print(sum);

  // 1. while循环（使用的变量需要初始化）
  int j = 1;
  var sum_ = 0;

  while (j <= 100) {
    sum_ += j;
    j++;
  }
  print(sum_);

  // 2. do...while循环（使用的变量需要初始化）
  int u = 1;
  var sum1 = 0;

  do {
    sum1 += u;
    u++;
  } while (u <= 100);

  print(sum1);

  // while 和 do...while的区别  第一次循环条件不成立的情况下
  int t = 10;
  while (t <= 2) {
    print('执行代码');  // 不满足条件，不会进行打印
  }

  int r = 10;
  do {
    print('执行代码');  // 先进行打印再进行条件判断，第二次循环不满足条件再跳出循环体
  } while (r <= 2);
}
