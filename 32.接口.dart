/* dart中的接口：和抽象类同样用于定义标准

1. dart的接口没有interface关键字定义接口，普通类和抽象类都可以作为接口被实现，
  同样使用implements关键字实现

2. 如果实现的类是普通类，需要将普通类和抽象类中的属性和方法全部复写一遍

3. 因为抽象类可以定义抽象方法，普通类不可以，要实现接口一般会使用抽象类

*/

// 定义一个Db库，Mysql和Mssql类中都有相同的方法
abstract class Db {
  late String url;   // 数据库的链接地址

  // 操作数据库的方法
  
  // 给数据库增加数据的方法
  add(String data);
  save();
  delete();
}

class Mysql implements Db {
  @override
  String url;

  // 构造函数
  Mysql(this.url);

  @override
  add(String data) {
    print('这是Mysql的add方法' + data);
  }

  @override
  delete() {
    throw UnimplementedError();
  }

  @override
  save() {
    throw UnimplementedError();
  }
}

class Mssql implements Db {
  @override
  String url;

  // 构造函数
  Mssql(this.url);

  @override
  add(String data) {
    print('这是Mssql的add方法' + data);
  }

  @override
  delete() {
    throw UnimplementedError();
  }

  @override
  save() {
    throw UnimplementedError();
  }
}


main() {
  // 实例化 Mysql，传入url
  Mysql my = new Mysql('1234567');
  my.add('123'); // 输出 这是Mysql的add方法123

  // 实例化 Mssql，传入url
  Mssql ms = new Mssql('1234567');
  ms.add('数据'); // 输出 这是Mysql的add方法123
}
