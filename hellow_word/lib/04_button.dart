import 'package:flutter/material.dart';

class MyHomeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
        FloatingActionButton(
          child: Text("点我"),
          onPressed: () => print("悬浮点击")
          ),
         
         FlatButton(
           onPressed: () => print("object"),
            child: Text("FlatButton")),

         OutlineButton(
            child: Text("边框按钮"),
            onPressed: () => print("OutlineButton"),
         ),
         RaisedButton(
           child: Text("凸起按钮"),
           textColor: Colors.red,
           color: Colors.yellow,
           onPressed: () => print("点击"),
         ),
         FlatButton(
           child: Row(
             // Row 默认在主轴方向占据最大宽度
             mainAxisSize: MainAxisSize.min,
            children: [
               Icon(Icons.library_add_check),
               Text("自定义", style: TextStyle(color: Colors.white),),
            ],
           ),
           color: Colors.red,
           highlightColor: Colors.grey,
           // 设置圆角
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
           onPressed: () => print("点击了自定义"),
         ),
       ],
    );
  }
}
