import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
 
  const SignUp({Key? key, }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final controllerLastName = TextEditingController();
  final controllerFirstName = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(200, 0, 230, 30),
            child: Text(
              'Create Account',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(60, 0, 230, 0),
            child: Text(
              'First Name',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(615, 5, 615, 0),
            child: TextField(
              controller: controllerFirstName,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[150],
                border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    )),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(60, 0, 230, 0),
            child: Text(
              'Last Name',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(615, 5, 615, 0),
            child: TextField(
              controller: controllerLastName,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[150],
                border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    )),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(60, 0, 230, 0),
            child: Text(
              'Email Address',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(615, 5, 615, 0),
            child: TextField(
              controller: controllerEmail,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[150],
                border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    )),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(60, 0, 230, 0),
            child: Text(
              'Password',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(615, 5, 615, 0),
            child: TextField(
              controller: controllerPassword,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[150],
                border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    )),
                // hintText: 'Enter your email',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: TextButton(
              style: TextButton.styleFrom(
                shape: const StadiumBorder(),
                textStyle: const TextStyle(fontSize: 16),
                primary: Colors.white,
                backgroundColor: Colors.blue[800],
              ),
              onPressed: () {
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
              child: const Text('CREATE ACCOUNT'),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              height: 1.0,
              width: 65.0,
              color: Colors.black,
            ),
          ),
          const Text(
            'OR',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              height: 1.0,
              width: 65.0,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: TextButton(
              style: TextButton.styleFrom(
                shape: const StadiumBorder(),
                textStyle: const TextStyle(fontSize: 12),
                primary: Colors.white,
                backgroundColor: Colors.blue[800],
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const SignIn()),
                // );
              },
              child: const Text('ALREADY HAVE AN ACCOUNT? SIGN IN'),
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
