import 'package:flutter/material.dart';
import 'package:learn_flutter_67_2/models/person.dart';


// Step 17: Routing
import 'package:learn_flutter_67_2/main.dart';


class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _age = 20;
  Job _job = Job.Doctor; // Default

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Add Person",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Add Person"),
          backgroundColor: Colors.pinkAccent,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: "Name"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Age"),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your age';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Age must be a number';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _age = int.parse(value!);
                  },
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField<Job>(
                  value: _job,
                  decoration: const InputDecoration(labelText: "Job"),
                  items: Job.values.map((job) {
                    return DropdownMenuItem<Job>(
                      value: job,
                      child: Text(job.title),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _job = value!;
                    });
                  },
                ),
                const SizedBox(height: 20),
                FilledButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Add person to list
                      people.add(Person(name: _name, age: _age, job: _job));
                      // Reset form
                      _formKey.currentState!.reset();
                      // Optional: show a snackbar
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Person added")),
                      );
                    }
                    //Step 17: Routing
                    Navigator.push(context, MaterialPageRoute(builder: 
                    (ctx) => MyApp()),
                    );
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 243, 33, 33),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
