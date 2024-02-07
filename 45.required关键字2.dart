// required关键字在类的构造函数中的使用

// =====必须传入this.name和this.age参数
// class Person {
//   String name;
//   int age;

//   // 表示必须传入this.name和this.age参数
//   Person({required this.name, required this.age});

//   String getName() {
//     return '${this.name}-${this.age}';
//   }
// }


// void main() {
//   Person p = new Person(
//     name:'张三',
//     age:20
//   );

//   // 调用getName方法
//   print(p.getName());
// }


// =====this.name参数可以不传入，但是必须传入this.age参数
class Person {
  String? name;  // 可空属性
  int age;

  // 表示this.name参数可以不传入（String? name要定义可空属性?），但是必须传入this.age参数
  Person({this.name, required this.age});

  String getName() {
    return '${this.name}-${this.age}';
  }
}


void main() {
  Person p = new Person(age:20);

  // 调用getName方法
  print(p.getName());

  // 输出 null-20
}