import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigation_bar/Auth/Google/google_sign_in.dart';
import 'package:navigation_bar/Auth/sign_up_db.dart';
import 'package:navigation_bar/Auth/sign_up_new.dart';
import 'package:navigation_bar/main.dart';
import 'package:provider/provider.dart';

class SignIn extends StatefulWidget {
  const SignIn({
    Key? key,
  }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

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
              controller: emailController,
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
              controller: passwordController,
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
              onPressed: sign_in,
              child: const Text('SIGN IN'),
            ),
          ),
          SizedBox(
            height: 20,
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
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: Size(20, 10)),
              icon: FaIcon(
                FontAwesomeIcons.google,
                color: Colors.red,
              ),
              label: Text("Sign Up with Google"),
              onPressed: () async {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.googleLogin();
              }),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: TextButton(
              style: TextButton.styleFrom(
                shape: StadiumBorder(),
                textStyle: const TextStyle(
                  fontSize: 16,
                ),
                primary: Colors.white,
                backgroundColor: Colors.blue[800],
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              },
              child: const Text('CREATE ACCOUNT'),
            ),
          ),
        ],
      ),
    );
  }

  Future sign_in() async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator()));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    //The code below calls of dialog box after user signs in
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
