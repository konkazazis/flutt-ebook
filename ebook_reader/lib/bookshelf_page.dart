import 'package:flutter/material.dart';
import 'package:epub_view/epub_view.dart';
import 'study_page.dart'; // Import the EpubReader widget

class BookshelfPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bookshelf')),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 6, // Number of dummy ebooks
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to the EpubReader page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      StudyPage(), // Instantiate EpubReader widget
                ),
              );
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Add your book cover image here if needed
                  SizedBox(height: 8),
                  Text('Ebook Title ${index + 1}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
