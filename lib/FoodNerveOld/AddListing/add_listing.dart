import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:navigation_bar/Auth/Google/google_sign_in.dart';

import 'package:provider/provider.dart';

class AddListing extends StatelessWidget {
  const AddListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[700],
            bottom: const TabBar(
              tabs: [
                Center(
                  child: Text("Donate Food"),
                ),
                Center(
                  child: Text("Get Food"),
                ),
              ],
            ),
            title: Text(
              '${user.email!} Please add your listing',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          body: TabBarView(
            children: [
              // DonateFoodForm(),
              // GetFoodForm(),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
              elevation: 4.0,
              icon: const Icon(Icons.logout, size: 32),
              label: const Text('Sign Out'),
              backgroundColor: Colors.grey[700],
              onPressed: () {
                FirebaseAuth.instance.signOut();
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.logout();
              }),
        ),
      ),
    );
  }
}
