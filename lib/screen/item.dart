//Step 8: stateful widget
import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  int count = 10;

  void addQuantity() {
    setState(() {
      count++;
    });
  }

  void subtractQuantity() {
    setState(() {
      count = count > 0 ? count - 1 : 0;
      // Ensure count does not go below 0
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Quantity: $count",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: addQuantity,
                child: Text("Add"),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: subtractQuantity,
                child: const Text("Subtract"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}