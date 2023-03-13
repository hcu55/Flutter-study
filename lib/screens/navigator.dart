// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(const MyNavigator());

class MyNavigator extends StatelessWidget {
  const MyNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigator",
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to the Second Page"),
          onPressed: () {
            Navigator.push(context2, MaterialPageRoute(
                builder: (_) => SecondPage()
            ));
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to the First Page"),
          onPressed: () {
            Navigator.pop(ctx);
          },
        ),
      ),
    );
  }
}


