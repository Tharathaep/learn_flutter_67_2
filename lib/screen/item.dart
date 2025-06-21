//Step 8: stateful widget
//Step 9: listview widget

import 'package:flutter/material.dart';

// class Item extends StatefulWidget {
//   const Item({super.key});

//   @override
//   State<Item> createState() => _ItemState();
// }

// class _ItemState extends State<Item> {
//   int count = 10;

//   void addQuantity() {
//     setState(() {
//       count++;
//     });
//   }

//   void subtractQuantity() {
//     setState(() {
//       count = count > 0 ? count - 1 : 0;
//       // Ensure count does not go below 0
//     });
//   }
// Step 9: listview widget
List data = ["สมชาย", "สมหญิง", "สมศรี", "สมปอง", "สมจิตร"];
  @override
  Widget build(BuildContext context) {
    // return Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Text(
    //         "Quantity: $count",
    //         style: const TextStyle(fontSize: 20),
    //       ),
    //       const SizedBox(height: 20),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           ElevatedButton(
    //             onPressed: addQuantity,
    //             child: Text("Add"),
    //           ),
    //           const SizedBox(width: 10),
    //           ElevatedButton(
    //             onPressed: subtractQuantity,
    //             child: const Text("Subtract"),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
    //Step 9: listview widget
    return ListView.builder(itemBuilder: (context, index) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blueAccent,
        ),
        margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        padding: EdgeInsets.all(40),
        child: Text(
          data[index],
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      );
    }, 
    itemCount: data.length
    );  
    
  }
