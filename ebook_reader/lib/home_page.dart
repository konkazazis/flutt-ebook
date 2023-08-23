import 'package:flutter/material.dart';
import 'bookmarks_page.dart';
import 'bookshelf_page.dart';
import 'music_page.dart';
import 'settings_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    BookmarksPage(),
    BookshelfPage(),
    MusicPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.blue, // Set the selected icon color
        unselectedItemColor: Colors.grey, // Set the unselected icon color
        showSelectedLabels: true, // Hide the label of selected icon
        showUnselectedLabels: false, // Hide the label of unselected icons
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmarks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Bookshelf',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
