import 'package:ecommerce_test/view/screen_home/screen_home.dart';
import 'package:ecommerce_test/view/screen_login/screen_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseAuth.instance.signOut();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      // home: FirebaseAuth.instance.currentUser == null
      //     ? const ScreenLogin()
      //     : const ScreenHome(),
      home: ScreenHome(),
    );
  }
}
