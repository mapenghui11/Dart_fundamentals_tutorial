/* ===库的部分导入：
      只导入库的一部分方法，有两种模式：
        1. 只导入需要的部分，使用show关键字，例如：
        import 'lib/myMath.dart' show foo;
        import 'package:lib1/lib1.dart' show foo;

        2. 隐藏不需要的部分，使用hide关键字，例如：
        import 'lib/myMath.dart' hide foo;
        import 'package:lib1/lib2.dart' hide foo;
*/


/* ===延迟加载：可以在需要加载时再进行加载，以减少app的启动时间


  1. 使用deferred as关键字来指定，如下例子所示：

  import 'packages:deferred/hello.dart' deferred as hello;

  2. 当需要使用时，需要使用loadLibrary()方法来进行加载：

  greet() async {
    await hello.loadLibrary();
    hello.printGreeting();
  }
*/


// ===对库进行拆分：使用part关键字拆分，使用export导出