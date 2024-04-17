// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:innolympics_apqs/feed.dart';
import 'package:innolympics_apqs/login.dart';
import 'package:innolympics_apqs/messages.dart';


class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int myIndex = 0;

  List<Widget> tabs = [
    HomePage(), 
    Text('Bookmarks'),
    ChatScreen(),
    Text('Post'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDEDED),
      appBar: AppBar(
        backgroundColor: Color(0xFF4180A3),
        title: Text('HANDY MANNING',
            style: TextStyle(color: Color.fromARGB(255, 252, 252, 252))),
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Color.fromARGB(255, 252, 252, 252),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Color.fromARGB(255, 252, 252, 252),
              ))
        ],
      ),
      body: tabs[myIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Color(0xFF4180A3),
          selectedItemColor: Color(0xFF4180A3),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Color(0xFF4180A3),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
                color: Color(0xFF4180A3),
              ),
              label: 'Bookmarks',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                color: Color(0xFF4180A3),
              ),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.create,
                color: Color(0xFF4180A3),
              ),
              label: 'Post',
            ),
          ]),
    );
  }
}
