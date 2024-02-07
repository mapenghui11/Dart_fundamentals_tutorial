/* 映射（Maps）是无序的键值对：
常用属性：
  keys          获取所有的key值
  values        获取所有的value值
  isEmpty       是否为空
  isNotEmpty    是否不为空

常用方法：
  remove(key)     删除指定key的数据
  addAll({...})   合并映射，给映射内增加属性
  containsValue   查看映射内的值，返回true/false

*/
void main() {
  // 直接创建字典
  Map person = {
    'name': '张三', // 键要加上分号
    'age': 20,
    'work': ['python', 'solidity', 'dart']
  };

  print(person);
  print(person['name']);
  print(person.keys); // 获取所有的key，输出(name, age, work)
  print(person.values.toList()); // 获取所有的value，转换成List

  person.addAll({
    // 可以一次增加多个键值对
    'sex': 'man',
    'height': 170,
  });

  person.remove('height'); // 删除键值对
  print(person);

  print(person.containsValue('张三'));  // 查看映射内的值，返回true

  // new操作符创建字典
  var person_ = new Map();

  person_['name'] = '李四';
  person_['age'] = 22;
  print(person_);
}
