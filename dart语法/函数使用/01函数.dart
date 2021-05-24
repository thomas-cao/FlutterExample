main(List<String> args) {
  changeName(() {
    print("object");
  });
}

void changeName(Function foo) {
  foo();
}

// 将函数作为参数
void setAge( int foo(int num1, int num2)) {

}
// 为函数起别名
typedef myFunc = int Function (int a, int b);