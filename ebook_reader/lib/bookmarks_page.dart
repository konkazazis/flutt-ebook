import 'package:flutter/material.dart';

class BookmarksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bookmarks')),
      body: ListView.builder(
        itemCount: 5, // Number of dummy bookmarks
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text('Bookmark Title ${index + 1}'),
              subtitle: Text(
                  'This is a small passage of text that represents a bookmark.'),
              onTap: () {
                // Implement bookmark selection and navigation here
              },
            ),
          );
        },
      ),
    );
  }
}
