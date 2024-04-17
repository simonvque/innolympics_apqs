import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:innolympics_apqs/auth_service.dart';
import 'package:innolympics_apqs/home.dart';
import 'package:innolympics_apqs/login.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDEDED),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(),
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
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
              'Get Started',
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Montserrat-Italic',
                color: Color(0xFF4180A3),
              ),
            ),
            SizedBox(height: 10),
            SignUpForm(),
          ],
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _auth = AuthService();

  final _email = TextEditingController();

  final _password = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const textFieldColor = Color(0xFF4180A3);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 300, // Set the desired width here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'First Name*',
                    style: TextStyle(
                        color: textFieldColor,
                        fontFamily: 'Montserrat-Regular'),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 50, // Adjust the height as needed
                    child: TextField(
                      style: TextStyle(color: textFieldColor), // Set text color
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: textFieldColor),
                        ),
                        filled: true,
                        fillColor: Colors.white, // Set background color
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 300, // Set the desired width here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Last Name*',
                    style: TextStyle(
                        color: textFieldColor,
                        fontFamily: 'Montserrat-Regular'),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 50, // Adjust the height as needed
                    child: TextField(
                      style: TextStyle(color: textFieldColor), // Set text color
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: textFieldColor),
                        ),
                        filled: true,
                        fillColor: Colors.white, // Set background color
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300, // Set the desired width here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email*',
                    style: TextStyle(
                        color: textFieldColor,
                        fontFamily: 'Montserrat-Regular'),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: 50, // Adjust the height as needed
                    child: TextField(
                      controller: _email,
                      style: const TextStyle(
                          color: textFieldColor), // Set text color
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: textFieldColor),
                        ),
                        filled: true,
                        fillColor: Colors.white, // Set background color
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300, // Set the desired width here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Password*',
                    style: TextStyle(
                        color: textFieldColor,
                        fontFamily: 'Montserrat-Regular'),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: 50, // Adjust the height as needed
                    child: TextField(
                      obscureText: true,
                      controller: _password,
                      style: const TextStyle(
                          color: textFieldColor), // Set text color
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: textFieldColor),
                        ),
                        filled: true,
                        fillColor: Colors.white, // Set background color
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 300, // Set the desired width here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone*',
                    style: TextStyle(
                        color: textFieldColor,
                        fontFamily: 'Montserrat-Regular'),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 50, // Adjust the height as needed
                    child: TextField(
                      style: TextStyle(color: textFieldColor), // Set text color
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: textFieldColor),
                        ),
                        filled: true,
                        fillColor: Colors.white, // Set background color
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 300, // Set the desired width here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Job  Status*',
                    style: TextStyle(
                        color: textFieldColor,
                        fontFamily: 'Montserrat-Regular'),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 50, // Adjust the height as needed
                    child: TextField(
                      style: TextStyle(color: textFieldColor), // Set text color
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: textFieldColor),
                        ),
                        filled: true,
                        fillColor: Colors.white, // Set background color
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 300, // Set the desired width here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Job Role*',
                    style: TextStyle(
                        color: textFieldColor,
                        fontFamily: 'Montserrat-Regular'),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 50, // Adjust the height as needed
                    child: TextField(
                      style: TextStyle(color: textFieldColor), // Set text color
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: textFieldColor),
                        ),
                        filled: true,
                        fillColor: Colors.white, // Set background color
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 300, // Set the desired width here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Job Industry*',
                    style: TextStyle(
                        color: textFieldColor,
                        fontFamily: 'Montserrat-Regular'),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 50, // Adjust the height as needed
                    child: TextField(
                      style: TextStyle(color: textFieldColor), // Set text color
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: textFieldColor),
                        ),
                        filled: true,
                        fillColor: Colors.white, // Set background color
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 300, // Set the desired width here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address*',
                    style: TextStyle(
                        color: textFieldColor,
                        fontFamily: 'Montserrat-Regular'),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 50, // Adjust the height as needed
                    child: TextField(
                      style: TextStyle(color: textFieldColor), // Set text color
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: textFieldColor),
                        ),
                        filled: true,
                        fillColor: Colors.white, // Set background color
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 300, // Set the desired width here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'City',
                    style: TextStyle(
                        color: textFieldColor,
                        fontFamily: 'Montserrat-Regular'),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 50, // Adjust the height as needed
                    child: TextField(
                      style: TextStyle(color: textFieldColor), // Set text color
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: textFieldColor),
                        ),
                        filled: true,
                        fillColor: Colors.white, // Set background color
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              width: 300, // Set the desired width here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Region*',
                    style: TextStyle(
                        color: textFieldColor,
                        fontFamily: 'Montserrat-Regular'),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 50, // Adjust the height as needed
                    child: TextField(
                      style: TextStyle(color: textFieldColor), // Set text color
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: textFieldColor),
                        ),
                        filled: true,
                        fillColor: Colors.white, // Set background color
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 100,
              height: 45,
              child: ElevatedButton(
                onPressed: _signup,
                // {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => const LoginPage()),
                //   );
                // },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4180A3),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Create',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'Montserrat')),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already an existing user? ",
                  style: TextStyle(
                      color: textFieldColor, fontFamily: 'Montserrat-Regular'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: const Text(
                    "Login now!",
                    style: TextStyle(
                      color: textFieldColor,
                      fontFamily: 'Montserrat-Regular',
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  goToHome(BuildContext context) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomePage(),
      ));

  _signup() async {
    final user =
        await _auth.createUserWithEmailAndPassword(_email.text, _password.text);
    if (user != null) {
      log("User Created Successfully");
      goToHome(context);
    }
  }
}
