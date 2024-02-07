/* 方法的定义：可以在main方法里面，也可以在main方法外面(全局作用域)
基本格式：
  返回类型（可以不写） 方法名称 （参数类型（可以不写） 参数1，参数类型 参数2） {
    方法体
    return返回值;
  }
*/

void printInfo() {
  // void表示方法没有返回值，不用指定类型
  print('hellodart');
}

List getList() {
  return ['python', 'solidity', 'dart'];
}

void main() {
  printInfo();

  print(getList());

  int getNum() {
    var myNum = 123;
    return myNum;
  }

  print(getNum()); // 调用getNum方法

  // 求1到n的和方法
  int sumNum(int n) {
    var sum = 0;
    for (var i = 1; i <= n; i++) {
      sum += i;
    }
    return sum;
  }

  print(sumNum(60));


  // === 给方法传入可选参数（可以写多个）
  String userInfo(String username, [int? age]) {
    // int? age 表示age是可空类型，并且在没有提供值的情况下为 null
    if (age != null) {
      return 'name:$username -- age:$age';
    }
    return 'name:$username -- age:None';
  }

  print(userInfo('张三', 20)); // 输出name:张三 -- age:20
  print(userInfo('张三')); // 输出name:张三 -- age:None

  // 如果传入age参数则正常打印出age；如果没有传入age，即age为空，则返回None


  // === 给方法传入默认参数（可以写多个）
  String userInfo_(String username, [String sex = 'man', int? age]) {
    // String sex = 'man'表示当没有给sex传入参数时，sex默认值为‘man’
    if (age != null) {
      return 'name:$username -- sex:$sex -- age:$age';
    }
    return 'name:$username -- sex:$sex -- age:$age';
  }

  print(userInfo_('张三', 'woman')); // 输出name:张三 -- sex:woman -- age:null
  print(userInfo_('张三'));          // 输出name:张三 -- sex:man -- age:null


  // === 给方法传入命名参数
  String userInfos(String username, {String sex = 'man', int? age}) {
    if (age != null) {
      return 'name:$username -- sex:$sex -- age:$age';
    }
    return 'name:$username -- sex:$sex -- age:$age';
  }

  print(userInfos('张三', age: 20));
  // 输出 name:张三 -- sex:man -- age:20
  print(userInfos('张三', sex: 'woman', age: 20));
  // 输出name:张三 -- sex:woman -- age:20


  // === 将方法做为参数传入另一个方法
  fn1() {   
    print('fn1');   // 定义一个方法fn1
  }

  fn2(fn) {         // 方法fn2传入一个方法做为参数，并执行该方法
    fn();
  }

  fn2(fn1);         // 将fn1方法做为实参传入fn2
}
