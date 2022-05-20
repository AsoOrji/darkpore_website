import 'package:flutter/material.dart';
import 'package:navigation_bar/Auth/sign_up.dart';
import 'package:navigation_bar/pages/foodnerve/foodnerve.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(60, 0, 230, 30),
            child: Text(
              'Sign In',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
            ),
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
              child: const Text('SIGN IN'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 16),
                  primary: Colors.grey[700],
                ),
                onPressed: () {},
                child: const Text(
                  'Forgot email?',
                  style: TextStyle(
                      decoration: TextDecoration.underline, fontSize: 14),
                ),
              ),
              Text(
                '|',
                style: TextStyle(color: Colors.grey[700], fontSize: 14),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 16),
                  primary: Colors.grey[700],
                ),
                onPressed: () {},
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(
                      decoration: TextDecoration.underline, fontSize: 14),
                ),
              ),
            ],
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
                textStyle: const TextStyle(fontSize: 16),
                primary: Colors.white,
                backgroundColor: Colors.blue[800],
              ),
              onPressed: () {  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUp()),
                        );},
              child: const Text('CREATE ACCOUNT'),
            ),
          ),
        ],
      ),
    );
  }
}
