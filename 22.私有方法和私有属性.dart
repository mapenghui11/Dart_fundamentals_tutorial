/* dart中的私有方法和私有属性
 dart中没有public,private,protected这些访问修饰符，但是可以使用_把属性和方法定义成私有
 前提是需要把类分离成单独的类文件，_私有才会生效
*/

// class Animal {
//   String _name;
//   int age;

//   Animal(this._name, this.age);

//   void getInfo() {
//     print('${this._name}--${this.age}');
//   }

//   String getName() {
//     return this._name;
//   }
//   void _run() {
//     print('这是一个私有方法');
//   }
//   execRun() {
//     this._run();
//   }
// }

import 'lib/Animal.dart';

void main() {
  Animal animal = new Animal('张三', 35);
  animal.getInfo();

  print(animal.age);
  /* print(animal._name); 
      在name设置成私有后，访问_name会报错，可以正常访问age
  */

  print(animal.getName());
  // 但是可以通过类中的公有方法去访问私有变量

  // print(animal._run()); _run为私有方法，不能访问，但是可以通过公有方法的调用间接访问
  animal.execRun(); 
}
