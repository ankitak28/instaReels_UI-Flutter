import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Insta Reels App UI",
    home: insta_reels(),
    theme:
        ThemeData(primarySwatch: Colors.blue, canvasColor: Colors.transparent),
    debugShowCheckedModeBanner: false,
  ));
}

class insta_reels extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return insta_reels_state();
  }
}

class insta_reels_state extends State<insta_reels> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.black,
            bottomNavigationBar: BottomNavigationBar(
                elevation: 0,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: "Discover"),
                  BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.message), label: "Inbox"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_circle), label: "Me"),
                ],
                type: BottomNavigationBarType.shifting,
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.grey,
                onTap: _onItemTap),
            body: TabBarView(
              children: [
                Center(
                    child: Text(
                  "anki",
                  style: TextStyle(color: Colors.blue),
                )),
                Center(
                    child: Text(
                  "sweeety",
                  style: TextStyle(color: Colors.blue),
                )),
                Center(
                    child: Text(
                  "Bitto",
                  style: TextStyle(color: Colors.blue),
                ))
              ],
            )));
  }

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
