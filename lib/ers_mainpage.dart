// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:innolympics_apqs/main.dart';

class ERSmainpage extends StatelessWidget {
  const ERSmainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA36441),
        leading: IconButton(
            icon: Icon(Icons.arrow_back), 
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
        ),
      ),

      body: Text(
        'Testing'
      ),
    );
  }
}