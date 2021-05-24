main(List<String> args) {
  var p = Person("hh", 18);

  print(p.name);
}

class Person {
  final String name;
  final int age;
  Person(this.name, this.age);
}
