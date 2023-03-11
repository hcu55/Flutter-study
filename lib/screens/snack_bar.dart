import 'package:flutter/material.dart';

void main() => runApp(const MyAppSnackBar());

class MyAppSnackBar extends StatelessWidget {
  const MyAppSnackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Snack Bar",
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snack Bar"),
        centerTitle: true,
      ),
      body: Center(
          child: TextButton(
        child: const Text(
          "show me",
          style: TextStyle(
            fontSize: 20,
            color: Colors.red,
          ),
          selectionColor: Colors.red,
        ),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: const Text("New Snack Bar"),
            action: SnackBarAction(
              label: 'plus',
              onPressed: () {},
            ),
          ));
        },
      )),
    );
  }
}
