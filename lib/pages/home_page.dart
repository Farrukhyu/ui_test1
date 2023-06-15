import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ui_test_task/pages/login_page.dart';

import '../utils/my_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal[800],
        body: Column(
          children: [
            Container(
              height: 250,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  child: Text(
                    'Borrow \n & enjoy!',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            ),
            Container(
              height: 50,
            ),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.teal[400],
              child: const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 15),
                child: Text(
                  'ebooks, audiobooks & magazines',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
              child: MyButton(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginPage();
                  }));
                },
                text: "Lets get started!",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
