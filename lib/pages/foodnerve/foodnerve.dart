import 'package:flutter/material.dart';
import 'package:navigation_bar/Auth/sign_in.dart';

class FoodNerveHome extends StatelessWidget {
  const FoodNerveHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: Text('Welcome to FoodNerve OS Exchange Platform'),
        body: SignIn());
  }
}
