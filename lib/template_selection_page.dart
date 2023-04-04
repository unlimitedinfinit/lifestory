// template_selection_page.dart
import 'package:flutter/material.dart';

class TemplateSelectionPage extends StatefulWidget {
  @override
  _TemplateSelectionPageState createState() => _TemplateSelectionPageState();
}

class _TemplateSelectionPageState extends State<TemplateSelectionPage> {
  // Define a list of templates
  List<Map<String, dynamic>> _templates = [
    {
      'name': 'Template 1',
      'thumbnail': 'https://example.com/template1_thumbnail.jpg',
    },
    // Add more templates here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Template'),
      ),
      body: GridView.builder(
        itemCount: _templates.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          // Build a template card
          return GestureDetector(
            onTap: () {
              // Implement functionality to select the template and proceed to the next step
            },
            child: Card(
              child: Column(
                children: [
                  // Display a thumbnail of the template
                  Image.network(_templates[index]['thumbnail']),
                  SizedBox(height: 10),
                  // Display the name of the template
                  Text(_templates[index]['name']),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
