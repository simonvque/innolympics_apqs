// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const Feed());
}

class Feed extends StatefulWidget {
  const Feed({Key? key}): super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  
  int myIndex = 0;

  final tabs = [
    Center(child: Text('Home')),
    Center(child: Text('Bookmarks')),
    Center(child: Text('Messages')),
    Center(child: Text('Post')),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Color(0xFFEDEDED),

        body: tabs[myIndex],

        appBar: AppBar(
          backgroundColor: Color(0xFF4180A3),
          title: Text('HANDY MANNING', style: TextStyle(
            color: Color.fromARGB(255, 252, 252, 252)
          )),
          elevation: 0,
          leading: Icon(Icons.menu, color: Color.fromARGB(255, 252, 252, 252),),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.notifications, 
          color: Color.fromARGB(255, 252, 252, 252),))],
        ),
        
        bottomNavigationBar: BottomNavigationBar(

          unselectedItemColor: Color(0xFF4180A3),
          selectedItemColor: Color(0xFF4180A3),
          showUnselectedLabels: true,

          type: BottomNavigationBarType.fixed,

          onTap: (index) {
            setState((){
              myIndex = index;
            });
          },

          currentIndex: myIndex,

          items: const [
          
          BottomNavigationBarItem(
            icon: Icon(Icons.home, 
            color: Color(0xFF4180A3),),
            label: 'Home',
            ), 
          
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, 
            color: Color(0xFF4180A3),), 
            label: 'Bookmarks',
            ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.message, 
            color: Color(0xFF4180A3),), 
            label: 'Messages', ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.create, 
            color: Color(0xFF4180A3),), 
            label: 'Post', ),
            
            ] ),  
      
      ),
    );              

  }
}