import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:innolympics_apqs/login.dart';
import 'package:innolympics_apqs/nav.dart';
import 'package:innolympics_apqs/post.dart';
import 'package:innolympics_apqs/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Handy Manning',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF0079BD)),
      ),
      home:
          const CreatePostPage(), //<------------------ change the class if you need to test
    );
  }
}
