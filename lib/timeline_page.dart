// timeline_page.dart
import 'package:flutter/material.dart';

class TimelinePage extends StatefulWidget {
  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  // Define a list of timeline events
  List<Map<String, dynamic>> _timelineEvents = [
    {
      'date': '2000-01-01',
      'title': 'Event 1',
      'description': 'Description of Event 1',
    },
    // Add more timeline events here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timeline'),
      ),
      body: ListView.builder(
        itemCount: _timelineEvents.length,
        itemBuilder: (BuildContext context, int index) {
          // Build a timeline event item
          return ListTile(
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Display the date of the event
                Text(
                  _timelineEvents[index]['date'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Display the title of the event
                Text(
                  _timelineEvents[index]['title'],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                // Display the description of the event
                Text(_timelineEvents[index]['description']),
              ],
            ),
            onTap: () {
              // Implement functionality to open the event details page or a dialog
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement functionality to add a new event to the timeline
        },
        child: Icon(Icons.add),
        tooltip: 'Add New Event',
      ),
    );
  }
}
