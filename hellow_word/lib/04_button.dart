import 'package:flutter/material.dart';

class MyHomeContent extends StatelessWidget {
/*
  FlatButton 属性 materialTapTargetSize 默认是padded 有个48的间距
  Expands the minimum tap target size to 48px by 48px.
   button的大小默认是包裹内容的,而button 内部的buttonTheme 属性默认是有值的
    padding 内边距

   如果想对button 设置确切的宽高 可以包裹一次Container 对Container 设置宽高

 */
  final sizebutton = Container(
    width: 200,
    height: 45,
    child: FlatButton(
      child: Text(
        "登录 按钮",
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      color: Colors.red,
      highlightColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      onPressed: () {
        print("点击登录");
      },
    ),
  );

  final customButton = ButtonTheme(
    minWidth: 20,
    height: 20,
    child: FlatButton(
      padding: EdgeInsets.all(0),
      child: Text("button 就你觉得呐"),
      color: Colors.red,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      onPressed: () => print("object"),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(child: Text("点我"), onPressed: () => print("悬浮点击")),
        FlatButton(onPressed: () => print("object"), child: Text("FlatButton")),
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
              Text(
                "自定义",
                style: TextStyle(color: Colors.white),
              ),
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
