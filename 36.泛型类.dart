// 泛型类

// <int>表示指定list传入元素的类型
List list = new List<int>.filled(2, 5);

class MyList {
  List list = <int>[];

  // add()方法增加数据
  void add(int value) {
    this.list.add(value);
  }

  // getList()方法获取数据
  List getList() {
    return list;
  }
}


// 将MyList修改成泛型类
class My_List<T> {
  List list = <T>[];

  void add(T value) {
    this.list.add(value);
  }

  List getList() {
    return list;
  }
}


main() {
  MyList l = new MyList();
  l.add(1);
  l.add(12);
  l.add(42);
  print(l.getList());

  // 可以增加任意类型的数据
  My_List i = new My_List();
  i.add(1);
  i.add('python');
  i.add(true);
  print(i.getList());

  // 指定传入数据的类型，只能增加String类型的数据
  My_List s = new My_List<String>();
  s.add('python');
  print(s.getList());
}
