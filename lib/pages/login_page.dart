import 'package:flutter/material.dart';
import 'package:ui_test_task/utils/my_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      body: Column(
        children: [
          const SizedBox(height: 200),
          Container(
            width: double.infinity,
            color: Colors.teal[900],
            child: const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Log in',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.teal[600],
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.teal[600],
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Forgot your password?',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MyButton(onTap: null, text: 'Enter'),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: SizedBox(
              child: Text(
                "Don't have an account?",
                style: TextStyle(
                  color: (Colors.white),
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: null,
            child: Text(
              'Register now',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
