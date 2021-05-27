import 'package:flutter/material.dart';

/*
加载本地图片
1， 创建images 文件夹
2，在pubspec.yaml 中配置 assets: 路径 (注意 这里的格式一定要和其他属性保持一致 不然可能无效)
3， image: AssetImage("assets/images/xiaopang.jpg"), 加载图片
 */

/**
 *  https://api.flutter.dev/flutter/painting/ImageCache-class.html
 * 
 *  flutter中 image 会自动缓存的 默认缓存1000 张 &100M
 *  Implements a least-recently-used cache of up to 1000 images, and up to 100 MB. The maximum size can be adjusted using maximumSize and maximumSizeBytes.
 * 
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
     ),
     // 可以设置展位图的image
     FadeInImage(
       placeholder: AssetImage("assets/images/xiaopang.jpg"),
       image: NetworkImage(url),

     )
     
    ]);
  }
}
