//Step 10:make a model for store data
class Person {
  String name;
  int age;
  String job;

  // Constructor
  Person({required this.name, required this.age , required this.job});
}

  List<Person> people = [
    Person(name: "สมชาย", age: 30, job: "Engineer"),
    Person(name: "สมหญิง", age: 28, job: "Doctor"),
    Person(name: "สมศรี", age: 25, job: "Teacher"),
    Person(name: "สมปอง", age: 35, job: "Artist"),
    Person(name: "สมจิตร", age: 40, job: "Chef"),
  ];