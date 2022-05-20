import 'package:flutter/material.dart';
import 'package:navigation_bar/Auth/sign_in.dart';
import 'package:navigation_bar/pages/foodnerve/foodnerve.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(200, 0, 230, 30),
            child: Text(
              'Create Account',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(60, 0, 230, 0),
            child: Text(
              'First Name',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(615, 5, 615, 0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[150],
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30.0),
                    )),
                // hintText: 'Enter your email',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(60, 0, 230, 0),
            child: Text(
              'Last Name',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(615, 5, 615, 0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[150],
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30.0),
                    )),
                // hintText: 'Enter your email',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(60, 0, 230, 0),
            child: Text(
              'Email Address',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(615, 5, 615, 0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[150],
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30.0),
                    )),
                // hintText: 'Enter your email',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(60, 0, 230, 0),
            child: Text(
              'Password',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(615, 5, 615, 0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[150],
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30.0),
                    )),
                // hintText: 'Enter your email',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: TextButton(
              style: TextButton.styleFrom(
                shape: StadiumBorder(),
                textStyle: const TextStyle(fontSize: 16),
                primary: Colors.white,
                backgroundColor: Colors.blue[800],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FoodNerveHome()),
                );
              },
              child: const Text('CREATE ACCOUNT'),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              height: 1.0,
              width: 65.0,
              color: Colors.black,
            ),
          ),
          Text(
            'OR',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              height: 1.0,
              width: 65.0,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: TextButton(
              style: TextButton.styleFrom(
                shape: StadiumBorder(),
                textStyle: const TextStyle(fontSize: 12),
                primary: Colors.white,
                backgroundColor: Colors.blue[800],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignIn()),
                );
              },
              child: const Text('ALREADY HAVE AN ACCOUNT? SIGN IN'),
            ),
          ),
        ],
      ),
    );
  }
}
