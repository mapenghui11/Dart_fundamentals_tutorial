/*  List常用属性：
  length 长度
  reversed 翻转，对列表倒序排序
  isEmpty 是否为空
  isNotEmpty 是否不为空

    List常用方法：
  add  增加
  addAll  拼接数组
  indexof  查找（传入具体值）
  remove   删除（传入具体值）
  removeAt  删除（传入索引值）
  fillRange   修改
  insert(index,value);   指定位置插入
  insertAll(index,list);    指定位置插入List
  toList()    其他类型转换为List
  join()      List转换成字符串
  split()     字符串转换成List
  forEach 
  map
  
*/

void main() {
  // List的属性
  List myList = ['python', 'solidity', 'dart'];
  print(myList.length);
  print(myList.isEmpty);
  print(myList.reversed); // 输出集合 (dart, solidity, python)

  var newMYList = myList.reversed.toList(); // 转换成列表
  print(newMYList);

  // List的方法
  myList.add('java'); // 只能增加一个元素
  myList.addAll(['c++', 'go']); // 将两个数组拼接
  print(myList);
  
  print(myList.indexOf('solidity')); // 查找元素并返回元素索引，查找不到返回-1
  myList.remove('c++'); // 删除元素
  myList.removeAt(4); // 根据索引值删除元素
  print(myList);

  myList.fillRange(3, 4, 'flutter'); // 3为要修改的元素的起始位置，4为结束位置，索引初始值为1，可以同时修改多个值
  myList.insert(4, 'go'); // 在索引4的位置插入元素‘go’
  myList.insertAll(5, ['c++', 'java']); // 在索引4的位置插入list
  print(myList);

  var str = myList.join(',');   //将List转换成字符串，用，连接
  print(str);                   // 输出 python,solidity,dart,flutter,go,c++,java

  var list = str.split(',');   // 将str转换成列表，用，进行切割
  print(list);                 // 输出[python, solidity, dart, flutter, go, c++, java]
}
