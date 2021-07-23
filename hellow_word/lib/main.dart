import 'package:flutter/material.dart';
import 'dart:math';
import '../11_async.dart';

main(List<String> args) {
  runApp(MyApp());
}

// 快捷键 stl
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      home: HomeStackPage(title: "豆瓣应急",),
      theme: ThemeData( // 主题设置
         splashColor: Colors.transparent,
         primaryColor: Colors.red,
         highlightColor: Colors.transparent
      ),
    );
  }
}


class HomeStackPage extends StatefulWidget {
  final String title;
  HomeStackPage({this.title = "豆瓣小组"});
  @override
  _HomeStackPageState createState() => _HomeStackPageState();
}

class _HomeStackPageState extends State<HomeStackPage> {
  var _selectedIndex = 0;
    final manager = ManagerAsync();
@override
  void initState() {
    super.initState();
       print("initState_begin");
     manager.exectureFunc();
     print("initState_end");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        unselectedItemColor:  Colors.yellow,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              title: Text("首页"),
              icon: Icon(
                Icons.linked_camera,
                color: Colors.pink,
              )),
          BottomNavigationBarItem(
              title: Text("影集"),
              icon: Icon(Icons.linked_camera, color: Colors.red)),
          BottomNavigationBarItem(
              title: Text("个人"),
              icon: Icon(Icons.linked_camera, color: Colors.blue)),
          BottomNavigationBarItem(
              title: Text("首页"),
              icon: Icon(Icons.linked_camera, color: Colors.orange)),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeGridView(),
          PageView(
            backgroundColor: Colors.white,
          ),
          PageView(
            backgroundColor: Colors.white10,
          ),
          PageView(
            backgroundColor: Colors.white12,
          ),
        ],
      ),
    );
  }
}


class PageView extends StatelessWidget {
  final backgroundColor;

  PageView({this.backgroundColor = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Center(
        child: Text("jndcjnsd")
      ),
    );
  }
}


// home

class HomeGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: maxCrossLayout(),
      children: getColorItem(),
    );
  }


 SliverGridDelegate fixedCrossLayout() {
   return SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 侧轴数量
        mainAxisSpacing: 10, // 主轴item 直接间距
        crossAxisSpacing: 5, // 侧轴item 之间的间距
        childAspectRatio: 1.5, // 高度比例 1.0 == 和宽度一致
        mainAxisExtent: 210, // item高度
      );
 }

SliverGridDelegate maxCrossLayout() {
  return SliverGridDelegateWithMaxCrossAxisExtent(
       maxCrossAxisExtent: 230, // item的宽度 不是绝对值 会根据屏幕宽度计算比例
       mainAxisSpacing: 10,
       crossAxisSpacing: 5,
       childAspectRatio: 1.0
  );
}

  List<Widget> getColorItem() {
    return List.generate(100, (index) {
      return Container(
        color: Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255)),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text("item => $index", style: TextStyle(fontSize: 25, color: Colors.white),),
        ],),
      );
    });
  }
}