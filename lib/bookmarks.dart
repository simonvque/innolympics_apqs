// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:innolympics_apqs/listedpost.dart';
import 'package:innolympics_apqs/messages.dart';
import 'package:innolympics_apqs/nav.dart';
import 'listings.dart';

class Bookmarks extends StatefulWidget {
  const Bookmarks({super.key});

  @override
  State<Bookmarks> createState()=> _BookmarksState();
  
  }

class _BookmarksState extends State<Bookmarks> {

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
                 builder:(BuildContext context)=>ListedPost()));
              },
              leading: const Icon(
                Icons.bookmark,
                color: Color(0xFF4180A3),
                ),
              trailing: const Icon(
                Icons.arrow_forward,
                color: Color(0xFF4180A3),
                ),
              title: Text(bookmarks[index].job),
              subtitle: Text(bookmarks[index].desc),
            )
          );
        },
        childCount: bookmarks.length,
      ),
    );
      }
  }