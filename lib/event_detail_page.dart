// event_detail_page.dart
import 'package:flutter/material.dart';

class EventDetailPage extends StatelessWidget {
  final Map<String, dynamic> event;

  EventDetailPage({required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Display the event title
              Text(
                event['title'],
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),

              // Spacer between title and date
              SizedBox(height: 10),

              // Display the event date
              Text(
                event['date'],
                style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                textAlign: TextAlign.left,
              ),

              // Spacer between date and description
              SizedBox(height: 20),

              // Display the event description
              Text(
                event['description'],
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.left,
              ),

              // Add other relevant information and media elements
              // such as photos, videos, and audio recordings
              // ...
            ],
          ),
        ),
      ),
    );
  }
}


//n this outline, the EventDetailPage widget is defined as a StatelessWidget. It takes an event object as a required parameter. The widget contains a Scaffold with an AppBar and a SingleChildScrollView wrapping a Column that displays the event's title, date, and description.
//
// You can add other relevant information and media elements (such as photos, videos, and audio recordings) as additional widgets in the Column. To navigate to the EventDetailPage from the TimelinePage, update the onTap function of the ListTile in the TimelinePage as follows:
//
// dart
//
// onTap: () {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => EventDetailPage(event: _timelineEvents[index]),
//     ),
//   );
// },
//
// This will pass the event data to the EventDetailPage and navigate to it when a ListTile is tapped.