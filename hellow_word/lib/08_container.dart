import 'package:flutter/material.dart';

// Container
  class HomePage extends StatelessWidget {
      final String title;
    // 初始化方法
  // HomePage({Key key, this.title}) : super(key: key);
  HomePage({this.title = "demo"});

   @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      alignment: Alignment.topLeft, // 设置内容对齐方式
      width: 200,
      height: 200,
      padding: EdgeInsets.all(10), // 内边距
      margin: EdgeInsets.all(10), // 外边距
      child: Icon(Icons.linked_camera, size: 50, color: Colors.indigo,),
      // decoration: BoxDecoration(), 设置边框 阴影等
    );
    
  }
}