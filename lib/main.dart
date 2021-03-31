import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Insta Reels App UI",
    home: insta_reels(),
    theme: ThemeData(primarySwatch: Colors.blue),
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
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  backgroundColor: Colors.black,
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  backgroundColor: Colors.black,
                  label: "Discover"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add),
                  label: "Add",
                  backgroundColor: Colors.black),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message),
                  label: "Inbox",
                  backgroundColor: Colors.black),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle),
                  label: "Me",
                  backgroundColor: Colors.black),
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            onTap: _onItemTap),
        body: Container());
  }

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
