// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(const ColumnRowWidget());

class ColumnRowWidget extends StatelessWidget {
  const ColumnRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Myapp",
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: Text("Container 1"),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text("Container 2"),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text("Container 3"),
            ),
          ],
        ),
      ),
    );
  }
}

