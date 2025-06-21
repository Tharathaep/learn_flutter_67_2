// // step8: stateful widget
import 'package:flutter/material.dart';

// Step 10: make a model for store data
import 'package:learn_flutter_67_2/models/person.dart';

// Step 12: use google fonts
// import 'package:google_fonts/google_fonts.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  int quantity = 10;

  // Step 11: Define the people list using the Person model
  List<Person> people = [
    Person(name: "สมชาย", age: 30, job: Job.Engineer),
    Person(name: "สมหญิง", age: 28, job: Job.Doctor),
    Person(name: "สมศรี", age: 25, job: Job.Teacher),
    Person(name: "สมปอง", age: 35, job: Job.Artist),
    Person(name: "สมจิตร", age: 40, job: Job.Chef),
  ];

  // void addQuantity() {
  //     setState(() {
  //       quantity++;
  //     });
  //   }

  // void subtractQuantity() {
  //     setState(() {
  //       if (quantity > 0) {
  //         quantity--;
  //       }
  //     });
  //   }

  // step 9: Listview widget
  //List data = ["Isak", "Wirtz", "Kerkaze", "Frimpong", "Mamardashvili"];

  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //      children: [
    //       Text(
    //         "Quantity: $quantity",
    //         style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    //       ),
    //       const SizedBox(height: 20),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           ElevatedButton(
    //             onPressed: addQuantity,
    //             child: const Text("Add"),
    //           ),
    //           const SizedBox(width: 20),
    //           ElevatedButton(
    //             onPressed: subtractQuantity,
    //             child: const Text("Subtract"),
    //           ),
    //         ],
    //       ),
    //      ],
    //   ),
    // );
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            // color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            // step 11: use a enum
            color: people[index].job.color,
          ),
          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
          padding: EdgeInsets.all(40),
          // child: Text(
          //   data[index],
          //   style: TextStyle(
          //     fontSize: 24,
          //     color: Colors.white,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    people[index].name,
                    style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "${people[index].age} years old",
                    style: const TextStyle(fontSize: 20, color: Colors.white70),
                  ),
                  Text(
                    "Job: ${people[index].job}",
                    style: const TextStyle(fontSize: 20, color: Colors.white70),
                  ),
                  Image.asset("assets/images/IMG_2995.png", 
                  width: 50, 
                  height: 50),
                ],
              ),
              // Text(
              //   "${people[index].name} - ${people[index].age} - ${people[index].job}",
              //   style: const TextStyle(
              //     fontSize: 24,
              //     color: Colors.white,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  setState(() {
                    people.removeAt(index);
                  });
                },
              ),
            ],
          ),
        );
      },
      itemCount: people.length,
    );
  }
}