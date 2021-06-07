
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// main(List<String> args) {
//   runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.red),
//       home: HomePage("home"),
//       )
//       );
// }

class HomePage extends StatefulWidget {
    // 初始化方法
  // HomePage({Key key, this.title}) : super(key: key);
  HomePage(this.title);
  final String title;
  @override
  _HomePageAnimatState createState() => _HomePageAnimatState();
}


class _HomePageAnimatState extends State<HomePage> with TickerProviderStateMixin {

 AnimationController? controller;
 CurvedAnimation? curve;
var flag = false;

@override
  void initState() {
    super.initState();
    controller = AnimationController(duration: Duration(microseconds: 2000), vsync: this);
    curve = CurvedAnimation(parent: controller!, curve: Curves.easeOut);
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        flag = !flag;
        if (flag) {
        controller?.reverse();
        } else {
        controller?.forward();
        }
      },
    ),
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body: Row(
      // 侧轴对齐方式
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(color: Colors.redAccent, width: 60, height: 60,),
        Container(color: Colors.orange, width: 100, height: 100,),
        Container(color: Colors.blue, width: 50, height: 50,),
        Container(color: Colors.greenAccent, width: 80, height: 80,),
      ],
    )
  );
}
@override
  void dispose() {
    print("dispose");
    controller?.dispose();
    super.dispose();
  }

}

