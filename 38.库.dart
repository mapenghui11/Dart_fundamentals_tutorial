/* 在Dart中，库在使用时通过import关键字引入

  library指令可以创建一个库，每个dart文件都是一个库

  Dart中3种主要的库：

  1. 自定义库
  import 'lib/xxx.dart';

  2. 系统内置库
  import 'dart: math';
  import 'dart: io';
  import 'dart: convert';

  3. Pub包管理系统中的库

      1. 从以下网址找到要用的库
        http://pub.dev/packages
        http://pub.flutter-io.cn/packages
        http://dartlang.org/flutter/
      
      2. 创建一个pubspec.yaml文件，内容如下

        name: xxx
        description: A new flutter module project.
        dependencies:
          http: ^0.12.0+2
          date_format: ^1.0.6
      
      3. 配置dependencies依赖项

      4. 在项目目录的cmd中运行 put get 获取远程库，将依赖安装到项目中

      5. 看文档引入库使用

*/


// ===自定义库
// import 'lib/Animal.dart';

// main() {
//   var a = new Animal('布偶', 8);
//   print(a.getName());
// }


// ===系统内置库
import 'dart:math';

// 使用系统内置库io请求api接口数据 
// import 'dart:io';
// 使用系统内置库convert转换成utf8编码
// import 'dart:convert';

main() {
  // math库的方法：获取最小数，最大数
  print(min(23, 345));
  print(max(23, 345));
}
