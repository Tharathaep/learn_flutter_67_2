//Step 4: sperate the Home widget into it own file
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.blueAccent,
    margin: EdgeInsets.symmetric(horizontal: 20, vertical:  30),
    padding: EdgeInsets.all(20),
    child: Text(
      "Hello Flutter",
    style: TextStyle(fontSize: 30, letterSpacing: 3),
    ),
    );
  }
}