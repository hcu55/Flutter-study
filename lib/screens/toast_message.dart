// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const ToastApp());

class ToastApp extends StatelessWidget {
  const ToastApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Toast",
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toast message"),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            flutterToast();
          },
          child: Text("Toast"),
        ),
      ),
    );
  }
}

void flutterToast() {
  Fluttertoast.showToast(
      msg: "Flutter",
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      fontSize: 20,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT);
}
