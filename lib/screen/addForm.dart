//Step 13: TextFormField for input
//Step 14: DropdownButton for job selection
import 'package:flutter/material.dart';

enum Job {
  developer('Developer'),
  designer('Designer'),
  manager('Manager');

  final String title;
  const Job(this.title);
}

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add Person",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Add Person"),
          backgroundColor: const Color.fromARGB(255, 3, 221, 255),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "Name"),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "Age"),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16.0),
              DropdownButtonFormField(
                decoration: const InputDecoration(labelText: "Job"),
                items: Job.values.map((key) {
                  return DropdownMenuItem(value: key, child: Text(key.title));
                }).toList(),
                onChanged: (value) {
                  print(value);
                },
              ),
              const SizedBox(height: 16.0),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
