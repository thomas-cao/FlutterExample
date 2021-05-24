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

class MyHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HomeGoodsItem("名称djnnsdnc度假村年收到内存技术难点从收到您的从时间段内从是你的 的数据那测试1", "说明已",
            "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.improve-yourmemory.com%2Fpic%2Fa264a702571f939cb33d988732138330-0.png&refer=http%3A%2F%2Fimg.improve-yourmemory.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623246776&t=a7dc44053cac7b92c4c76e758dab934b"),
        HomeGoodsItem("名称2", "说明已",
            "https://pics7.baidu.com/feed/4e4a20a4462309f708e7a76d15dff2f5d6cad619.jpeg?token=df90351e06d7cbc7f3db513c4ad25980"),
        HomeGoodsItem("名称3", "说明已",
            "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fn.sinaimg.cn%2Fsinacn%2Fw640h1097%2F20171231%2Fe36e-fyqefvw6976142.jpg&refer=http%3A%2F%2Fn.sinaimg.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623246776&t=25633a1b277af61aa7991a27ddb1fae0"),
        HomeGoodsItem("名称4", "说明已",
            "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg1.tgbusdata.cn%2Fthumbnail%2Fjpg%2FOTFiNSw2MDAsNjAwLDQsMSwxLC0xLDEsMSxyazUw%2Fu%2Fpc.tgbus.com%2Fuploads%2Fallimg%2F130710%2F252-130G0162152.jpg&refer=http%3A%2F%2Fimg1.tgbusdata.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623246776&t=c90a0327589cb40b3385b12da9da0cc6"),
      ],
    );
  }
}

// Column 的使用  行组件 和 Column 从上到下依次排列 但是不能滚动 不能超出可视区域
// 创建单行内容
class HomeGoodsItem extends StatelessWidget {
  //  StatelessWidget 的参数都必须使用 final 修饰
  final String title;
  final String descString;
  final String imageIconUrl;

  // 定义标题样式
  final titleStyle =
      TextStyle(fontSize: 20, color: Colors.red, backgroundColor: Colors.grey);
  final descStyle = TextStyle(
      fontSize: 15, color: Colors.green, backgroundColor: Colors.blue);

  // 创建初始化方法 绑定参数
  HomeGoodsItem(this.title, this.descString, this.imageIconUrl);

  // 控件之间的距离可通过 SizeBox 来设置

  // 通过Container 嵌套来设置内边距
  @override
  Widget build(BuildContext context) {
    return Container(
      // 设置内边距
      padding: EdgeInsets.all(10), 
      // 设置边框
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: Colors.cyan
        )
      ),

      child: Column(
      children: [
        Text(
          title,
          style: titleStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          descString,
          style: descStyle,
        ),
        SizedBox(
          height: 10,
        ),
        Image.network(imageIconUrl)
      ],
    ),
    );
    
  }
}
