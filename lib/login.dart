import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'HANDY MANNING',
            style: TextStyle(
              fontSize: 24.0,
              fontFamily: 'Montserrat-SemiBold',
              color: Color(0xFF4180A3),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Login',
            style: TextStyle(
              fontSize: 16.0,
              fontFamily: 'Montserrat-Italic',
              color: Color(0xFF4180A3),
            ),
          ),
          SizedBox(height: 20),
          LoginForm(),
        ],
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    const textFieldColor = Color(0xFF4180A3);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: SizedBox(
              width: 300, // Set the desired width here
              height: 50, // Set the desired height here
              child: TextField(
                style: TextStyle(color: textFieldColor), // Set text color
                decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle:
                      TextStyle(color: textFieldColor), // Set hint text color
                  prefixIcon: Icon(Icons.person,
                      color: textFieldColor), // Set icon color
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: textFieldColor),
                  ),
                  filled: true,
                  fillColor: Colors.white, // Set background color
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: SizedBox(
              width: 300, // Set the desired width here
              height: 50, // Set the desired height here
              child: TextField(
                style: TextStyle(color: textFieldColor), // Set text color
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle:
                      TextStyle(color: textFieldColor), // Set hint text color
                  prefixIcon:
                      Icon(Icons.lock, color: textFieldColor), // Set icon color
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: textFieldColor),
                  ),
                  filled: true,
                  fillColor: Colors.white, // Set background color
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 100,
            height: 40,
            child: ElevatedButton(
              onPressed: () {
                // Add your login logic here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4180A3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text('Login',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Montserrat')),
            ),
          ),
        ],
      ),
    );
  }
}
