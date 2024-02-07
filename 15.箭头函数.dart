// 箭头函数：只能写一句代码

void main() {
  List myList = ['python', 'solidity', 'dart'];

  // === 用箭头函数遍历数组
  myList.forEach((value) {
    print(value);
  });

  myList.forEach((value) => print(value));

  // === 用箭头函数修改数组：当数组中的元素大于2时，将这个元素乘以2
  List list = [1, 2, 3, 4, 5, 6];
  var newList = list.map((value) => value > 2 ? value * 2 : value);
  // 三目运算符：如果value>2，输出value*2，否则输出value
  print(newList.toList());
}
