/* dart常用数据类型
      Numbers(数值)：int、double
      Strings(字符串)：String
      Booleans(布尔)：bool
      List(数组)：在dart中数组是列表对象
      Maps(字典)：键和值可以是任何类型的对象
*/

void main() {
  // ===字符串类型
  String str = 'this is str';
  print(str);

  String str_ = '''this is str
  this is str1
  this is str2
  ''';
  print(str_); // 三个单引号或双引号可以定义多行字符串

  // 字符串拼接
  String str1 = 'hello';
  String str2 = 'dart';

  print('$str1 $str2'); // 输出hello dart，使用$符号拼接字符串要加上引号
  print(str1 + str2); // 输出hellodart
  print(str1 + " " + str2); // 输出hello dart

  // ===数值类型
  // 1. int整形
  int a = 123;
  print(a);

  // 2. double整形/浮点型
  double b = 123.56;
  b = 123;
  print(b);

  // 3. 运算符 + - * / %
  var c = a + b;
  print(c);

  // ===布尔类型 true/false
  bool flag = true;
  print(flag);

  bool flag_ = false;
  print(flag_);

  // 条件判断语句
  var one = 123;
  var two = 456;

  if (one == two) {
    print('one = two');
  } else {
    print('one != two');
  }

  // ===List列表/集合类型
  // 1. 直接定义List
  var list = ['张三', 20, true];

  print(list);
  print(list.length);
  print(list[0]);

  // 2. 指定类型定义List
  var list_ = <String>['张三', '李四']; // 指定集合中所有元素的类型

  print(list_);

  // 3. 定义空列表并增加元素（不管是不是空列表，列表的长度都是可变的）
  var list1 = [];
  print(list1);

  list1.add('张三');
  list1.add(20);
  print(list1);
  print(list1.length);

  // 4. 创建固定长度的列表
  // var list2 = List.filled(length, fill);  length是列表长度，fill是列表元素

  var list2 = List.filled(2, '');
  print(list2);

  list2[0] = '张三'; // 修改集合的内容。但不能增加元素修改集合的长度，filled创建的是固定长度的集合
  list2[1] = '20';

  print(list2);

  var list3 = List<int>.filled(2, 20); // 指定int类型，列表元素参数不能加上‘’
  print(list3);

  list3[0] = 10;
  list3[1] = 30;

  print(list3);

  // === Maps字典类型
  // 直接创建字典
  var person = {
    'name': '张三', // 键要加上分号
    'age': 20,
    'work': ['python', 'solidity', 'dart']
  };

  print(person);
  print(person['name']);

  // new操作符创建字典
  var person_ = new Map();

  person_['name'] = '李四';
  person_['age'] = 22;
  print(person_);

  // ===dart判断数据类型
  // is关键词判断数据类型
  var data = 1234;

  if (data is String) {
    print('字符串类型');
  } else if (data is bool) {
    print('int类型');
  } else {
    print('其他类型');
  }
}
