// 当引入的两个库中有相同名称标识符的时候，使用as（重命名）关键字

// Person1和Person2有同名称的Person类，使用as关键字
import 'lib/Person1.dart';
import 'lib/Person2.dart' as lib;

main(List<String> args) {
  Person p1 = new Person('张三', 20);
  p1.getInfo();

  // 用lib.Person进行引用Person2中的Person类
  lib.Person p2 = new lib.Person('李四', 20);
  p2.getInfo();
}

 
