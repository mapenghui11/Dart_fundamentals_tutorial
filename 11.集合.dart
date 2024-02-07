/* 第二种定义集合的方法：Set
  1. 最主要的功能就是去除数组重复元素
  2. Set没有顺序且不重复，不能通过索引去获取值
*/

void main() {
  // 增加元素
  var s = new Set();
  s.add('python');
  print(s);

  // 对元素进行去重
  List list = ['python', 'solidity', 'dart', 'solidity'];
  var set = new Set();
  set.addAll(list);
  print(set);
  print(set.toList());  // 再转换成List
}
