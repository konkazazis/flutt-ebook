import 'package:flutter/material.dart';

class MusicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Music')),
      body: ListView.builder(
        itemCount: 5, // Number of dummy songs
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.music_note),
            title: Text('Song Title ${index + 1}'),
            subtitle: Text('Artist ${index + 1}'),
            trailing: Text('3:30'),
            onTap: () {
              // Implement song playback here
            },
          );
        },
      ),
    );
  }
}
