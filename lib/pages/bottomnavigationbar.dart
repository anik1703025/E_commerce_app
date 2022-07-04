import 'package:ecommerce/pages/myadds.dart';
import 'package:ecommerce/pages/itemsadded.dart';
import 'package:ecommerce/pages/account.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'account.dart';
import 'myadds.dart';
import 'itemsadded.dart';
import 'chat.dart';

class Bottomnavebar extends StatefulWidget {
  Bottomnavebar({Key? key}) : super(key: key);

  @override
  State<Bottomnavebar> createState() => _BottomnavebarState();
}

class _BottomnavebarState extends State<Bottomnavebar> {
  final _pages = [
    home(),
    itemsadded(),
    myadds(),
    chat(),
    account(),
  ];

  int _currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Itemsadded",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "My Adds",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "chat",
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
            backgroundColor: Colors.red,
          ),
        ],
        currentIndex: _currentpage,
        onTap: (int index) {
          setState(
            () {
              _currentpage = index;
            },
          );
        },
      ),
      body: _pages[_currentpage],
    );
  }
}
