import 'package:flutter/material.dart';

//Step 10:make a model for store data
// class Person {
//   String name;
//   int age;
//   String job;

//   // Constructor
//   Person({required this.name, required this.age , required this.job});
// }

//   List<Person> people = [
//     Person(name: "สมชาย", age: 30, job: "Engineer"),
//     Person(name: "สมหญิง", age: 28, job: "Doctor"),
//     Person(name: "สมศรี", age: 25, job: "Teacher"),
//     Person(name: "สมปอง", age: 35, job: "Artist"),
//     Person(name: "สมจิตร", age: 40, job: "Chef"),
//   ];
//Step 11: use a num
enum Job {
  Engineer(title: "Engineer", image: "assets/engineer.png", color: Colors.blue),
  Doctor(title: "Doctor", image: "assets/doctor.png", color: Color.fromARGB(255, 255, 63, 204)),
  Teacher(title: "Teacher", image: "assets/teacher.png", color: Colors.green),
  Artist(title: "Artist", image: "assets/artist.png", color: Colors.purple),
  Chef(title: "Chef", image: "assets/chef.png", color: Colors.orange);

  final String title;
  final String image;
  final Color color;

  const Job({required this.title, required this.image, required this.color});
}


class Person {
  String name;
  int age;
  Job job;

  // Constructor
  Person({required this.name, required this.age, required this.job});
}

List<Person> people = [
    Person(name: "สมชาย", age: 30, job: Job.Engineer),
    Person(name: "สมหญิง", age: 28, job: Job.Doctor),
    Person(name: "สมศรี", age: 25, job: Job.Teacher),
    Person(name: "สมปอง", age: 35, job: Job.Artist),
    Person(name: "สมจิตร", age: 40, job: Job.Chef),
];
