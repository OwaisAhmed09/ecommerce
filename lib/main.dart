import 'package:ecommerce/screens/Sign_in.dart';
import 'package:ecommerce/screens/card1.dart';
import 'package:ecommerce/screens/home.dart';
import 'package:ecommerce/screens/loging_screen.dart';
import 'package:ecommerce/screens/Sign_in.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
