// 类中的getter和setter修饰符的用法

// 计算矩形面积的类
class Rect {
  num height; // num既可以是int也可以是double
  num width;

  Rect(this.height, this.width);
  // 正常定义一个计算面积的方法
  // area() {
  //   return this.height * this.width;
  // }

  // getter修饰符定义一个计算面积的方法，没有括号
  get area {
    return this.height * this.width;
  }

  // setter修饰符定义一个修改height的方法
  set areaHeight(value) {
    this.height = value;
  }
}

void main() { 
  // 初始化类并传入参数给实例化对象 r
  Rect r = new Rect(10, 6);

  // 正常调用类方法
  // print('${r.area()}');   
  
  // getter修饰的类方法在调用时直接通过访问属性的方式进行调用
  print('${r.area}'); 

  // setter修饰的类方法传入参数，并计算出面积
  r.areaHeight = 2;
  print(r.area);
}
