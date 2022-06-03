import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetFoodForm extends StatefulWidget {
  const GetFoodForm({
    Key? key,
  }) : super(key: key);

  @override
  State<GetFoodForm> createState() => _GetFoodFormState();
}

class _GetFoodFormState extends State<GetFoodForm> {
  final _formKey = GlobalKey<FormState>();
  final controllerLastName = TextEditingController();
  final controllerFirstName = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(200, 0, 200, 0),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter what you want to donate';
                }
                return null;
              },
              controller: controllerFirstName,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Which food do you want to donate?',
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(200, 0, 200, 0),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the description';
                }
                return null;
              },
              controller: controllerLastName,
              decoration: InputDecoration(
                border: const UnderlineInputBorder(),
                labelText: 'Description e.g quality, quantity, use date',
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(200, 0, 200, 0),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter pickup location';
                }
                return null;
              },
              controller: controllerEmail,
              decoration: InputDecoration(
                border: const UnderlineInputBorder(),
                labelText: 'Approximate pick up location',
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(200, 0, 200, 0),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter pickup times';
                }
                return null;
              },
              controller: controllerPassword,
              decoration: InputDecoration(
                border: const UnderlineInputBorder(),
                labelText: 'Pickup times',
              ),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(700, 0, 700, 50),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(0, 50),
                onPrimary: Colors.white,
                primary: Colors.grey[700],
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Sent')),
                  );
                }
                final firstName = controllerFirstName.text;
                final lastName = controllerLastName.text;
                final email = controllerEmail.text;
                final password = controllerPassword.text;
                createUser(
                    firstName: firstName,
                    lastName: lastName,
                    email: email,
                    password: password);
              },
              child: const Text('SUBMIT'),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> createUser({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    final docUser = FirebaseFirestore.instance.collection('users').doc();
    final user = MyUser(
        id: docUser.id,
        firstName: firstName,
        lastName: lastName,
        email: email,
        password: password);
    final json = user.toJson();
    await docUser.set(json);
  }
}

class MyUser {
  String id;
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  MyUser({
    this.id = '',
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });
  Map<String, dynamic> toJson() => {
        'id': id,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'password': password,
      };
}
