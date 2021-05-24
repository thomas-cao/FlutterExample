main(List<String> args) {
  final name = "wc";
  // print(name);
  run("name", 10, 2.0);
}

void run(String name, [int a, double b]) {
  String str = "$name ==${a} ==${b}";
  print(str);
}

// 创建flutter 指令
// flutter create 项目名称 （项目名称不能包含大写字母和特殊字符）