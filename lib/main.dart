import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:navigation_bar/sections/header.dart';

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

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        navigatorKey: navigatorKey,
        title: 'Darkpore',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFEFEFEF),
          fontFamily: GoogleFonts.kanit().fontFamily,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const MainPage());
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        // return const CareerMain();
        return const Header();
      },
    ));
  }
}
