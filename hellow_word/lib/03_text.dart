import 'package:flutter/material.dart';


/*
通过查看发现 Text 的组件是继承自 StatelessWidget 也就是说我的理解是一个壳 而真正渲染的东西是其
内部build中返回的RichText 来处理的，之间的关系大概和UIView 和CALayer 的关系
类似吧

 */

class MyHomeContent extends StatelessWidget {
  // 基础文本
  final t1 = Text(
    "data叫你独裁时登出鸡蛋茶上档次底层的陈上档次上档次收到内jdncsdchdchshdcshdbchsbdchsbdhbcsh存的\nksdcjnsdsdncjdcdcdcdcndnchd\nndcjnc",
    style: TextStyle(fontSize: 30, color: Colors.red),
    textAlign: TextAlign.left,
    maxLines: 3,
    overflow: TextOverflow.ellipsis, // 设置省略号
  );

// 富文本
  final t2 = Text.rich(
    TextSpan(text: "hellowflutter", children: [
      TextSpan(
          text: "11111111",
          style: TextStyle(
              color: Colors.red, fontSize: 20, backgroundColor: Colors.blue)),
      TextSpan(
          text: "2222222",
          style: TextStyle(
              color: Colors.green, fontSize: 30, backgroundColor: Colors.red)),
      WidgetSpan(child: Icon(Icons.access_time, color: Colors.red,)),
      TextSpan(
          text: "3333333",
          style: TextStyle(
              color: Colors.blue, fontSize: 30, backgroundColor: Colors.green)),
    ]),
    style: TextStyle(fontSize: 30, backgroundColor: Colors.cyan),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      // 主轴对齐方式
      mainAxisAlignment: MainAxisAlignment.start,
      // 侧轴对齐方式
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [t1, t2],
    );
  }
}
