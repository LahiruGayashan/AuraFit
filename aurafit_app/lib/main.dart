import 'package:aurafit_app/pages/add_page.dart';
import 'package:aurafit_app/pages/favorite_page.dart';
import 'package:aurafit_app/pages/home_page.dart';
import 'package:aurafit_app/pages/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    AddPage(),
    FavoritePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AuraFit",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: CupertinoColors.inactiveGray,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            }
            );
            
          },
          items: [
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Add"
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite"
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "Profile"
            ),
            ],
        ),
        body: _pages[currentIndex],
      ),
    );
  }
}
