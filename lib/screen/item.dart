import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  List<String> data = ["สมชาย", "สมหญิง", "สมศรี", "สมปอง", "สมจิตร"];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueAccent,
          ),
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(20),
          child: Text(
            data[index],
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}