import 'package:flutter/material.dart';


// 快捷键 stl
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

class MyHomeContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeContentState();
  }
}

class HomeContentState extends State<MyHomeContent> {
//  Padding 设置间距


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
 Padding(
      padding: EdgeInsets.all(0),
      child: Text("姐你是才能到", style: TextStyle(color: Colors.red, fontSize: 25, backgroundColor: Colors.green),),
    ),
    Text("姐你是才能到", style: TextStyle(color: Colors.red, fontSize: 25, backgroundColor: Colors.green),),
    Text("姐你是才能到", style: TextStyle(color: Colors.red, fontSize: 25, backgroundColor: Colors.green),),
      ],
    );
    
   
  }
}

class AlignDemo extends StatelessWidget {
  @override
// Align 设置位置
// center 继承自Align 并且所有处理都来着父类，父类中alignment 默认是 center (0 , 0)
//  alignment 取值 -1 <-> 1 (0, 0) 默认在中心位置，而Align的默认区域时整个屏幕
//  可通过 widthFactor & heightFactor 来设置 子控件的大小倍数

  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      widthFactor: 3,
      heightFactor: 5,
      child: Icon(
        Icons.pets,
        size: 100,
      ),
    );
  }
}