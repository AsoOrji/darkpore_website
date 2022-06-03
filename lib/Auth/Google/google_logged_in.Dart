import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigation_bar/Auth/logged_in.dart';
import 'package:navigation_bar/Auth/sign_up.dart';
import 'package:navigation_bar/Auth/foodnerve.dart';
import 'package:navigation_bar/Auth/google_sign_in.dart';
import 'package:navigation_bar/sections/navbar.dart';
import 'package:provider/provider.dart';

class LoggedInWidget extends StatefulWidget {
  const LoggedInWidget({Key? key}) : super(key: key);

  @override
  State<LoggedInWidget> createState() => _LoggedInWidgetState();
}

class _LoggedInWidgetState extends State<LoggedInWidget> {
  @override
  Widget build(BuildContext context) {
  final user = FirebaseAuth.instance.currentUser!;

    return Scaffold(
      appBar: AppBar(
        title: Text('You\'re Logged In to FoodNerve OS Exchange Platform. Welcome'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(user.photoURL!),
          ),
       Text('Name: ' + user.displayName!),
       Text('Email: ' + user.email!),

       SizedBox(height: 32),
        TextButton(
            child: Text('Logout'),
            onPressed: (){
              final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
            },
          )
      ]), );
  }
}
