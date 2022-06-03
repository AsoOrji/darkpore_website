import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:navigation_bar/Auth/Google/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:navigation_bar/Auth/sign_in.dart';
import 'package:navigation_bar/Pages/HomePage/home_main.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDcUtmMkhQkUioODeXSdreCnAyZ-H8Tlq4",
          authDomain: "darkpore-799a0.firebaseapp.com",
          projectId: "darkpore-799a0",
          storageBucket: "darkpore-799a0.appspot.com",
          messagingSenderId: "938057517280",
          appId: "1:938057517280:web:14d908781293487d79a885",
          measurementId: "G-X8NV1XMFT5"));
  runApp(const MyApp());
}
// void main() => runApp(const MyApp());

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
          navigatorKey: navigatorKey, title: 'DMA', home: const MainPage()));
  // home: MAinPage()));
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        return const HomeMain();
        // if (snapshot.connectionState == ConnectionState.waiting) {
        //   return const Center(child: CircularProgressIndicator());
        // } else if (snapshot.hasData) {
        //   return const HomeMain();
        // } else if (snapshot.hasError) {
        //   return const Center(child: Text('Something Went Wrong!'));
        // } else {
        //   return const SignIn();
        // }
      },
    ));
  }
}
