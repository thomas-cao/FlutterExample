import 'package:flutter/material.dart';

class MyHomeContent extends StatelessWidget {
// 通过给textField 绑定controller 来获取输入框的内容
  final usernameController = TextEditingController();
  final pwdController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        TextField(
          controller: usernameController,
          decoration: InputDecoration(
            hintText: "请输入名称",
            hintStyle: TextStyle(color: Colors.red, fontSize: 20),
            icon: Icon(Icons.people),
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            print("输入改变$value");
          },
          onSubmitted: (value) {
            print("点击提交$value");
          },
        ),
        SizedBox(
          height: 25,
        ),
        TextField(
          controller: pwdController,
          decoration: InputDecoration(
              hintText: "请输入密码",
              icon: Icon(Icons.lock),
              border: OutlineInputBorder()),
        ),
        SizedBox(
          height: 80,
        ),
        Container(
          width: 200,
          height: 45,
          child: FlatButton(
            child: Text(
              "登录 按钮",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            color: Colors.red,
            highlightColor: Colors.grey,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            onPressed: () {
              final name = usernameController.text;
              final pwd = pwdController.text;
              print("点击登录-$name -$pwd");
            },
          ),
        )
      ],
    );
  }
}
