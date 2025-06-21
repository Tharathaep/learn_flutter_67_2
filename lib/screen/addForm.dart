//Step 13: TextFormField for input
//Step 14: DropdownButton for job selection

// Step 15 form state management
// Step 16: Submit button
import 'package:flutter/material.dart';

enum Job {
  engineer('Engineer'),
  doctor('Doctor'),
  teacher('Teacher'),
  artist('Artist'),
  chef('Chef');

  final String title;
  const Job(this.title);
}

class AddForm extends StatefulWidget {
  const AddForm({super.key});

  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  //Step 15 : from state management
  //Step 16 : submit button
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _age = 20;
  Job _job = Job.doctor; // Default job

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
                  //Step 15 : from state management
                  //Step 16 : submit button
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _name =
                        value!; //! is used to tell Dart that value is not null
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Age"),
                  //Step 15 : from state management
                  //Step 16 : submit button
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your age';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _age = int.parse(value.toString());
                  },
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField<Job>(
                  //Step 15 : from state management
                  //Step 16 : submit button
                  value: _job,
                  decoration: const InputDecoration(labelText: "Job"),
                  items: Job.values.map((key) {
                    return DropdownMenuItem<Job>(
                      value: key,
                      child: Text(key.title),
                    );
                  }).toList(),
                  onChanged: (value) {
                    // print(value);

                  //Step 15 : from state management
                  //Step 16 : submit button
                  setState(() {
                    _job = value!;
                  });
                  },
                ),
                const SizedBox(height: 20),
                FilledButton(
                  onPressed: () {
                  //Step 15 : from state management
                  //Step 16 : submit button
                  _formKey.currentState?.validate();
                  _formKey.currentState?.save();},
                  personList.add(Person(name: _name, age: _age, job: _job)),
                  _formKey.currentState?.reset();
                  
                    .reset();
                  
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 243, 33, 33),
                  ),
                  child: Text(
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
