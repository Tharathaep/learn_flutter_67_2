import 'package:flutter/material.dart';
import 'package:learn_flutter_67_2/screen/addForm.dart';
// เปลี่ยนเป็น import item.dart



void main() {
  //   runApp(const MyApp());
  // }

  // class MyApp extends StatelessWidget {
  //   const MyApp({super.key});

  //   @override
  //   Widget build(BuildContext context) {
  //     return MaterialApp(
  //       title: "My Title",
  //       home: Scaffold(
  //         appBar: AppBar(
  //           title: const Text("My App"),
  //           backgroundColor: const Color.fromARGB(255, 3, 221, 255),
  //           centerTitle: true,
  //         ),
  //         body: const Item(), // แสดงรายชื่อ
  //       ),
  //     );
  //   }

  //Step 13: TextFormField for input
  //Step 14: DropdownButton for job selection
  runApp(const AddForm());
}
