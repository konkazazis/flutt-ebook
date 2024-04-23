import 'package:ebook_reader/uploadButton.dart';
import 'package:flutter/material.dart';
import 'bookmarks_page.dart';
import 'bookshelf_page.dart';
import 'music_page.dart';
import 'settings_page.dart';
import 'uploadButton.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    BookshelfPage(),
    BookmarksPage(),
    MusicPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: _pages[_currentIndex],
          ),
          Positioned(
            left: 16.0,
            bottom: 16.0,
            child: UploadButtonWidget(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.amber, // Set the selected icon color
        unselectedItemColor: Colors.grey, // Set the unselected icon color
        showSelectedLabels: true, // Hide the label of selected icon
        showUnselectedLabels: false, // Hide the label of unselected icons
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Bookshelf',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmarks',
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
