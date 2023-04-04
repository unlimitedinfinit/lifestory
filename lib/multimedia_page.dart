// multimedia_page.dart
import 'package:flutter/material.dart';

class MultimediaPage extends StatefulWidget {
  @override
  _MultimediaPageState createState() => _MultimediaPageState();
}

class _MultimediaPageState extends State<MultimediaPage> {
  // Define a list of multimedia items
  List<Map<String, dynamic>> _multimediaItems = [
    {
      'title': 'Multimedia Item 1',
      'type': 'video', // or 'audio', 'image', etc.
      'url': 'https://example.com/video1.mp4',
      'thumbnail': 'https://example.com/video1_thumbnail.jpg',
    },
    // Add more multimedia items here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multimedia'),
      ),
      body: GridView.builder(
        itemCount: _multimediaItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          // Build a multimedia item card based on the type (video, audio, image, etc.)
          return GestureDetector(
            onTap: () {
              // Implement functionality to open the multimedia item in a new screen or a dialog
            },
            child: Card(
              child: Column(
                children: [
                  // Display a thumbnail based on the multimedia type
                  Image.network(_multimediaItems[index]['thumbnail']),
                  SizedBox(height: 10),
                  // Display the title of the multimedia item
                  Text(_multimediaItems[index]['title']),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
