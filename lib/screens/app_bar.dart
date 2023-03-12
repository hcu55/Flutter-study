import 'package:flutter/material.dart';

void main() => runApp(const MyAppBar());

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
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
        title: const Text("Appbar icon menu"),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {
                // ignore: avoid_print
                print("Shopping cart button is clicked");
              },
              icon: const Icon(Icons.shopping_cart)),
          IconButton(
              onPressed: () {
                // ignore: avoid_print
                print("Search button is clicked");
              },
              icon: const Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage("assets/image1.jpg"),
              ),
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/image2.png"),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage("assets/image2.png"),
                //   backgroundColor: Colors.white,
                // )
              ],
              accountName: const Text("BBANTO"),
              accountEmail: const Text("bbanto@naver.com"),
              onDetailsPressed: () {
                // ignore: avoid_print
                print("arrow is clicked");
              },
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: const Text("Home"),
              onTap: () {
                // ignore: avoid_print
                print("Home is clicked");
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: const Text("settings"),
              onTap: () {
                // ignore: avoid_print
                print("settings is clicked");
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: const Text("Q&A"),
              onTap: () {
                // ignore: avoid_print
                print("Q&A is clicked");
              },
              trailing: const Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
