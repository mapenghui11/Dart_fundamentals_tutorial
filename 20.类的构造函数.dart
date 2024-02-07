// ===类的构造函数

class Person {
  String name;
  int age;

  // ===默认构造函数：可以在初始化类时自动触发，进行赋值，只能定义一个
  Person(this.name, this.age);

  // ===命名构造函数: 可以定义多个
  // 使用初始化列表 : name = 'DefaultName', age = 0，为 name 和 age 提供了初始值
  Person.now()
      : name = 'DefaultName',
        age = 0 {
    print('我是命名构造函数');
  }

  // 使用命名构造函数重新对类属性进行赋值
  Person.setInfo(String name, int age)
      : name = 'DefaultName',
        age = 0 {
    this.name = name;
    this.age = age;
  }

  void getInfo() {
    print('${this.name}---${this.age}');
  }
}

void main() {
  // 默认构造函数
  Person person = new Person('张三', 20);
  person.getInfo();

  // 命名构造函数
  Person person_ = new Person.now(); // 输出 我是命名构造函数
  Person person1 = new Person.setInfo('张三', 20);
  person1.getInfo();
}


// ===this关键字
/*
  1. 区分局部变量和实例字段： 
    当局部变量的名称与实例字段的名称相同时，可以使用 this 来明确指定引用的是实例字段。如：

  class Example {
    int value = 42;

    void setValue(int value) {
      // 使用 this 来引用实例字段
      this.value = value;
    }
  }

  2. 在构造函数和方法中引用当前实例： 
    在构造函数或方法中，this 可以用于引用当前对象的实例，即正在被创建或操作的对象。

  class Example {
    int value;

    Example(int value) {
      // 使用 this 引用当前实例的字段
      this.value = value;
    }

    void printValue() {
      print(this.value);
      }
    }

  3. 在闭包中引用当前实例： 
    在 Dart 中，当在一个闭包中使用 this 时，它会引用包含该闭包的对象的实例。


  总结：this 关键字用于在类的成员方法中引用当前对象的实例，
        以及在特定的上下文中解决命名冲突。
*/
