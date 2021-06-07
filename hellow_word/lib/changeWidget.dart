import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

// 点击切换widget
class _HomePageState extends State<HomePage> {
  var toggle = true;

   _changeWidget() {
    print("当前状态$toggle");
    setState(() {
      toggle = !toggle;
    });
  }

  _getChildWidget() {
    if (toggle) {
      return Text("这个是个lable");
    } else {
      return CupertinoButton(
          child: Text("button"), onPressed: () => print("object"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        tooltip: "点击切换",
        child: Icon(Icons.update),
        onPressed: _changeWidget,
      ),
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Center(child: _getChildWidget()),
    );
  }
}

// class HomePage extends StatelessWidget {
//    @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       margin: EdgeInsets.all(10),
//       width: 300,
//       height: 100,
//       child: Text("记得你炒鸡蛋", style: TextStyle(color: Colors.white, fontSize: 28),),
//       decoration: BoxDecoration(
//         color: Colors.orange,
//         border: Border.all(
//           color: Colors.green,
//           width: 2,
//           style:  BorderStyle.solid
//         ),
//       borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
//       ),
//     );
//   }

// }