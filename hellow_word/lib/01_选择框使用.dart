import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MaterialApp(
    // 关闭debug 标记
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

// 拆分组件
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 返回创建新的widget
    //  Scaffold 类似于ios中的uiviewcontroller
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter练习"),
      ),
      body: HomeStateContent(),
    );
  }
}

// 内容的widget
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "hello world",
        style: TextStyle(fontSize: 40, color: Colors.red),
      ),
    );
  }
}

// Row 的使用 水平排列的组件
//  StatelessWidget 不能定义状态 和刷新数据状态
class HomeRowContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Checkbox(value: true, onChanged: (status) => print(status)),
          Text("点击切换")
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}

// 创建一个单独的类用来管理状态，需要继承自 StatefulWidget 返回一个状态维护这
class HomeStateContent extends StatefulWidget {
  @override
  // 返回创建的数据管理对象
  State<StatefulWidget> createState() {
    return HomeStateContentVM();
  }
}

// 状态管理类
class HomeStateContentVM extends State<HomeStateContent> {
  // 在这个类里定义参数 来设置状态更改

  // 箭头函数 (value) => print(value), 只能是一句语句
//  onChanged: (status) {
//                 print("点击了徐那块");
//                 setState(() {
//                   // 只有调用了setState 才会刷新Ui
//                   flag = status;
//                 });
//               }

  var flag = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Checkbox(
              value: flag,
              onChanged: (value) {
                setState(() {
                  flag = value!;
                });
              }),
          Text("点击切换")
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
    );
  }
}