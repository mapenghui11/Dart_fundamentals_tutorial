// 将类分离成单个文件后引用Person类
import 'lib/Person1.dart';

void main() {
  // 调用命名构造函数
  Person person = new Person.setInfo('李四', 19);
  // 调用类方法
  person.getInfo();
}
