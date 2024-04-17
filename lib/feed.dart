// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:innolympics_apqs/messages.dart';
import 'package:innolympics_apqs/nav.dart';
import 'listings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState()=> _HomeState();
  
  }

class _HomeState extends State<HomePage> {

  @override
  Widget build(BuildContext context) { 
    return ListView.custom(
      childrenDelegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Card(
            child: ListTile(
              tileColor: Colors.white,
              onTap:() {
                 Navigator.of(context).push(MaterialPageRoute(
                 builder:(BuildContext context)=>ChatScreen()));
              },
              leading: const Icon(
                Icons.bookmark,
                color: Color(0xFF4180A3),
                ),
              trailing: const Icon(
                Icons.message,
                color: Color(0xFF4180A3),
                ),
              title: Text(listings[index].job),
              subtitle: Text(listings[index].desc),
            )
          );
        },
        childCount: listings.length,
      ),
    );
      }
  }