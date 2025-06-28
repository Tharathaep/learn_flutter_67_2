// // step8: stateful widget
import 'package:flutter/material.dart';

// Step 10: make a model for store data
import 'package:learn_flutter_67_2/models/person.dart';

// Step 12: use google fonts
import 'package:google_fonts/google_fonts.dart';

import 'addForm.dart';

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
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: people.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: people[index].job.color, // Step 11: use a enum
                ),
                margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          people[index].name,
                          style: GoogleFonts.kanit(
                            fontSize: 30,
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Age: ${people[index].age}, job: ${people[index].job.title}',
                          style: GoogleFonts.prompt(
                            fontSize: 20,
                            color: Colors.white70,
                            ),
                        ),
                        
                      ],
                    ),
                    Image.asset(
                      "assets/images/IMG_2995.png"
                      , width: 50,
                      height: 50,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: IconButton(onPressed: (){
            Navigator.pushReplacement(
              context, 
              MaterialPageRoute(builder: (context) => const AddForm()),
            );
          }, 
          icon: Icon(
            Icons.add_circle, 
            size: 40, 
            color: Colors.blue)),
        )
      ],
    );
  }
}
