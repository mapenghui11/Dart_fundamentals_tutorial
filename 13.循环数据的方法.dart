/* 循环数据的方法：forEach  map  where  any  every  
    在List Map Set中是通用的
*/

void main() {
  List myList = ['python', 'solidity', 'dart'];

  Map person = {
    'name': '张三', // 键要加上分号
    'age': 20
  };


  // for...in循环数据
  for (var item in myList) {
    print(item);
  }

  // forEach方法
  myList.forEach((value) {        // 循环 List
    print(value);
  });

  person.forEach((key, value) {   // 循环 Map
    print('$key---$value');
  });


  // map方法：循环并修改数据
  List list = [1, 2, 3];
  var newList = list.map((value) {
    return value * 2;
  });
  print(newList); // 输出(2, 4, 6)


  // where方法：返回满足条件的值并组成一个新集合
  List list2 = [1, 2, 3, 4, 5];
  var newList2 = list2.where((value) {
    return value > 2;
  });
  print(newList2); // 输出(3, 4, 5)


  // any方法：只要集合中存在一个满足条件的数据则返回true，否则返回false
  List list3 = [1, 2, 3, 4, 5];
  var newList3 = list3.any((value) {
    return value > 4;
  });
  print(newList3); // 输出true


  // every方法：集合中所有数据都满足条件则返回true，否则返回false
  List list4 = [1, 2, 3, 4, 5];
  var newList4 = list4.every((value) {
    return value > 4;
  });
  print(newList4); // 输出false


  // 箭头函数
  var s = new Set();
  s.addAll([1, 22, 333]);
  s.forEach((value) => print(value)); // 循环打印出元素
}
