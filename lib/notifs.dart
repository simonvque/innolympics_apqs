// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'listings.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});
  
  @override
  Widget build(BuildContext context) { 
    return ListView.custom(
      childrenDelegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Card(
            child: ListTile(
              tileColor: Colors.white,
              leading: CircleAvatar(),
              title: Text(listings[index].name),
              subtitle: Text(listings[index].chat),
            )
          );
        },
        childCount: listings.length,
      ),
    );
      }
}