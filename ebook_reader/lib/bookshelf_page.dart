import 'package:ebook_reader/uploadButton.dart';
import 'package:flutter/material.dart';

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
              // Implement ebook opening here
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/book_cover.jpg', height: 100, width: 80),
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
