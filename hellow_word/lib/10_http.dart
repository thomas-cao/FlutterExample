import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';


class DoubanHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DoubanHomeState();
  }
}

class _DoubanHomeState extends State<DoubanHome> {

 // 数据
 List<TopicItem> topics = [];

// 初始化操作
     @override
  void initState() {
    super.initState();
    requestHomeTopic();
  }

   void requestHomeTopic() async {
     final urlStr = "https://games.mobileapi.hupu.com/3/7.5.28/kog/getNews?sign=4c21d7a13887ae8c03675a30320223b6&hot_news_plan=2&news_first_navi=&pre_count=0&advId=1EEB7455-92EF-4697-BBBB-14C10AD57A86&clientId=86475982&nid=0&first_navi_numbers=1&fromMiniProgram=1&preload=0&direc=next&num=20&night=0&crt=1623056719&time_zone=Asia%2FShanghai&client=CE846687-20A6-44A2-B0CF-55DD6A5E0126&bddid=905648317147208";
    final url = Uri.parse(urlStr);
     final request = await HttpClient().getUrl(url);
    final response = await request.close(); 
    if (response.statusCode == HttpStatus.ok) {
       var result = await response.transform(utf8.decoder).join();
      //  print("数据结果 ==> $result");
      // 模型数据转换
      Map userMap = json.decode(result);
      final dataObjc = userMap["result"]["data"];
       for (var sub in dataObjc) {
         topics.add(TopicItem.fromMap(sub));
       }
       setState(() {
       });
       print("转换完成后的数据 => ${topics}");
    }
   }

     @override
     Widget build(BuildContext context) {
       return ListView.builder(
         itemCount: topics.length,
        //  itemExtent: 310, // 设置item 的高度 不设置默认为包裹内容
         itemBuilder: (BuildContext context, int index) {
           return TopicItemCell(topics[index]);
         },
       );
     }
}

// item 
class TopicItemCell extends StatelessWidget {
  final TopicItem itemData;
  TopicItemCell(this.itemData);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 10, color: Color(0xfff1f1f1)))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("这是标题=>${itemData.title} | ${DateTime.now()}", style: TextStyle(fontSize:  16, color: Colors.teal),),
          Text("这是内容 => ${itemData.userName}"),
          Image.network(itemData.imageUrl),
        ],
      ),
      );
  }
}


// 模型
class TopicItem {
  String topicId = "";
  int? puid = 0;
  String userName = "";
  String title = "";
  String? avatarUrl = "";
  String imageUrl = "";

  TopicItem.fromMap(Map<String, dynamic> json) {
       this.topicId = json["nid"];
       this.puid = json["puid"];
       this.userName = json["uptime"];
       this.title = json["title"];
       this.avatarUrl = json["avatarUrl"];
       this.imageUrl = json["img"];
  }
}
