// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScreenA")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/b');
              },
              child: Text("Go to ScreenB"),
              style: TextButton.styleFrom(
                backgroundColor: Colors.red
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/c');
              },
              child: Text("Go to ScreenC"),
              style: TextButton.styleFrom(
                  backgroundColor: Colors.red
              ),
            ),
          ],
        ),
      ),
    );
  }
}
