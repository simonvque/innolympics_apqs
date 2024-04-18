// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ListedPost extends StatelessWidget {
  const ListedPost({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 ListTile(
                  tileColor: Colors.white,
                  leading: CircleAvatar(),
                  trailing: const Icon(
                    Icons.message,
                    color: Color(0xFF4180A3)),
                    title: Text('Are any plumbers available? Need assistance'),
                    subtitle: Text(' I recently installed a pipe and now its leaking from its base.' 
                       'I tried tightening its bolts but it keeps leaking. I am looking for a plumber who can help me',),
                )
              ]
            )
          )
          )
      )
    );
  }
}