// quiz_page.dart
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  // Define a variable to store the current question index
  int _currentQuestionIndex = 0;

  // Placeholder list of quiz questions and answers
  final List<Map<String, dynamic>> _quizData = [
    {
      'question': 'Question 1',
      'options': ['Option 1', 'Option 2', 'Option 3', 'Option 4'],
      'answer': 0,
    },
    // Add more questions and answers here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Display the current question
              Text(
                _quizData[_currentQuestionIndex]['question'],
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),

              // Spacer between question and options
              SizedBox(height: 30),

              // Display the options using a ListView.builder
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: _quizData[_currentQuestionIndex]['options'].length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        // Check if the selected option is correct
                        if (index == _quizData[_currentQuestionIndex]['answer']) {
                          // Show a dialog or snackbar indicating the answer is correct
                        } else {
                          // Show a dialog or snackbar indicating the answer is incorrect
                        }
                      },
                      child: Text(_quizData[_currentQuestionIndex]['options'][index]),
                    ),
                  );
                },
              ),

              // Spacer between options and navigation buttons
              SizedBox(height: 30),

              // Navigation buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Previous button
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_currentQuestionIndex > 0) {
                          _currentQuestionIndex--;
                        }
                      });
                    },
                    child: Text('Previous'),
                  ),

                  // Next button
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_currentQuestionIndex < _quizData.length - 1) {
                          _currentQuestionIndex++;
                        }
                      });
                    },
                    child: Text('Next'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
