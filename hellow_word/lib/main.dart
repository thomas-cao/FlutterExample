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

/*
加载本地图片
1， 创建images 文件夹
2，在pubspec.yaml 中配置 assets: 路径 (注意 这里的格式一定要和其他属性保持一致 不然可能无效)
3， image: AssetImage("assets/images/xiaopang.jpg"), 加载图片
 */

class MyHomeContent extends StatelessWidget {
  final url = "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg1.tgbusdata.cn%2Fthumbnail%2Fjpg%2FOTFiNSw2MDAsNjAwLDQsMSwxLC0xLDEsMSxyazUw%2Fu%2Fpc.tgbus.com%2Fuploads%2Fallimg%2F130710%2F252-130G0162152.jpg&refer=http%3A%2F%2Fimg1.tgbusdata.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623246776&t=c90a0327589cb40b3385b12da9da0cc6";
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      // // 加载网络图片
      Image.network(
        "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg1.tgbusdata.cn%2Fthumbnail%2Fjpg%2FOTFiNSw2MDAsNjAwLDQsMSwxLC0xLDEsMSxyazUw%2Fu%2Fpc.tgbus.com%2Fuploads%2Fallimg%2F130710%2F252-130G0162152.jpg&refer=http%3A%2F%2Fimg1.tgbusdata.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623246776&t=c90a0327589cb40b3385b12da9da0cc6",
        alignment: Alignment.bottomCenter,
      ),
     // 加载本地图片
     Image(
       image: AssetImage("assets/images/xiaopang.jpg"),
     ),
     CircleAvatar(
       radius: 120,
       backgroundImage: NetworkImage("https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg1.tgbusdata.cn%2Fthumbnail%2Fjpg%2FOTFiNSw2MDAsNjAwLDQsMSwxLC0xLDEsMSxyazUw%2Fu%2Fpc.tgbus.com%2Fuploads%2Fallimg%2F130710%2F252-130G0162152.jpg&refer=http%3A%2F%2Fimg1.tgbusdata.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623246776&t=c90a0327589cb40b3385b12da9da0cc6")
     ),
     ClipOval(
       child: Image.network(
         url,
         width: 200,
         height: 200,
         ),
     ),
     ClipRRect(
       borderRadius: BorderRadius.circular(30),
       child: Image.network(
         url,
         width: 200,
         height: 200,
         fit: BoxFit.fill,
         ),
     )

    ]);
  }
}
