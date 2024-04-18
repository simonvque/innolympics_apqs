import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:innolympics_apqs/auth_service.dart';
import 'package:innolympics_apqs/feed.dart';
import 'package:innolympics_apqs/nav.dart';
import 'package:innolympics_apqs/signup.dart';

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

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
            SizedBox(
              width: 300, // Set the desired width here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email',
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
                    'Password',
                    style: TextStyle(
                        color: textFieldColor,
                        fontFamily: 'Montserrat-Regular'),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: 50, // Adjust the height as needed
                    child: TextField(
                      controller: _password,
                      obscureText: true,
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
            const SizedBox(height: 50),
            SizedBox(
              width: 100,
              height: 45,
              child: ElevatedButton(
                onPressed: _login,
                // {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => const HomePage()),
                //   );
                // },
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
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account? ",
                  style: TextStyle(
                      color: textFieldColor, fontFamily: 'Montserrat-Regular'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpPage()));
                  },
                  child: const Text(
                    "Sign up now!",
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
        builder: (context) => const NavBar(),
      ));

  _login() async {
    final user =
        await _auth.loginUserWithEmailAndPassword(_email.text, _password.text);

    if (user != null) {
      log("User Logged In");
      goToHome(context);
    }
  }
}
