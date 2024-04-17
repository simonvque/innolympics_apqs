import 'package:flutter/material.dart';
import 'package:innolympics_apqs/login.dart';
import 'package:innolympics_apqs/nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HealthLink',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF0079BD)),
      ),
      home: //DoctorNavigationMenu(),
          const LoginPage(), //<------------------ change the class if you need to test
    );
  }
}
