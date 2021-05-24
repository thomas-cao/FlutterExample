import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

// 快捷键 stl
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("首页")),
      body: MyHomeContent(),
    );
  }
}


/*
通过查看发现 Text 的组件是继承自 StatelessWidget 也就是说我的理解是一个壳 而真正渲染的东西是其
内部build中返回的RichText 来处理的，之间的关系大概和UIView 和CALayer 的关系
类似吧

 */

class MyHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "data叫你独裁时登出鸡蛋茶上档次底层的陈上档次上档次收到内jdncsdchdchshdcshdbchsbdchsbdhbcsh存的\nksdcjnsdsdncjdcdcdcdcndnchd\nndcjnc",
    style: TextStyle(fontSize: 30, color: Colors.red),
    textAlign: TextAlign.left,
    maxLines: 3,
    overflow: TextOverflow.ellipsis, // 设置省略号
    );
  }
}
