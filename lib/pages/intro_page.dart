// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_app_grocery/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ///logo//
          Padding(
            padding: const EdgeInsets.only(
                left: 80, bottom: 80, top: 120, right: 80),
            child: Image.asset('lib/images/avocado.png'),
          ),

          ///text
          Text(
            'We deliver groceries at your doorstep',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          ////text -Fresh items everyday///
          Text(
            'Fresh items everyday',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          SizedBox(
            height: 50,
          ),

          ///button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: ((context) {
                  return HomePage();
                }),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(24),
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
