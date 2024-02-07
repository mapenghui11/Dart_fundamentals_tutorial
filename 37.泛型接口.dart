/* dart中的泛型接口：


1. 实现数据缓存的功能：文件缓存和内存缓存按照接口约束实现

2. 定义一个泛型接口，约束实现它的子类必须有getByKey(key)和 setByKey(key, value)

3. 要求调用setByKey的时候value类型和实例化子类的时候指定的类型一致

abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value);
}

*/

// 定义泛型接口
abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value);
}

// 定义一个文件缓存的方法继承泛型接口，实际是将String key、T value写入到文件/内存中
class fileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    throw UnimplementedError();
  }

  @override
  void setByKey(String key, T value) {
    print('我是文件缓存 将key = {key} value = ${value}写入到文件中');
  }
}

// 定义一个内存缓存的方法继承泛型接口
class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    throw UnimplementedError();
  }

  @override
  void setByKey(String key, T value) {
    print('我是内存缓存 将key = ${key} value = ${value} 写入到内存中');
  }
}

void main() {
  // 给泛型指定 Map、String 类型
  fileCache f = new fileCache<Map>();
  f.setByKey('index', {'姓名':'张三', '年龄':'20'});

  MemoryCache m = new MemoryCache<String>();
  m.setByKey('index', '首页数据');
}
