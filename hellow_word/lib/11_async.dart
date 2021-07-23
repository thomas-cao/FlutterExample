
import 'dart:io';

class ManagerAsync {

  exectureFunc() {
    print("开始执行");

    getUserInfoData().then((value) {
     print("获取的数据=> $value");
    });    
    print("执行完成");
  }

}

// await 的使用
Future getUserInfoData() async {
   var result = await getData(); 
   return "接口获取的数据($result)";
}


// Future 的使用
futureValueTest() {
  print("开始执行");
  Future.value("执行数据").then((value) {
     print("获取数据$value");
  });
  print("执行结束");
}

  void asyncText() {
    print("开始网络请求");
   var data = usingFutureGetData();
   data.then((value) {
       print("获取到数据了");
   }).catchError((error){
       print("发生错误了");
   }).whenComplete(() {
     print("代码执行完成 成功或者失败都会回调");
   });
    print("执行下面的任务");
  }

Future<String> usingFutureGetData() {
return Future<String>(() {
  sleep(Duration(seconds: 10));
    //  return "接口数据";
     throw Exception("遇到错误了");
});

}

// 阻塞式的请求数据
Future getData() async {
 var num = addNum();
 return "服务器返回的数据->$num";
}
 String addNum() {
  var temp = "";
  for (var i = 0; i < 1000; i ++) {
       temp += "-$i";
  }
 return temp;
}