import 'package:flutter/material.dart';

void main() {
  runApp(EduQuestApp());
}

class EduQuestApp extends StatelessWidget {
  const EduQuestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CareerCounsellingPage(),
    );
  }
}

class CareerCounsellingPage extends StatelessWidget {
  const CareerCounsellingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // White background for the whole page
      appBar: AppBar(
        backgroundColor: Colors.blue[300], // Sky blue background for the AppBar
        title: Text(
          'Career Counselling',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding around the body content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with shadow
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue[100], // Light sky blue background
                borderRadius: BorderRadius.circular(8), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(169, 169, 169, 0.4), // Using RGBO for opacity
                    spreadRadius: 1,
                    blurRadius: 6, // Shadow blur effect
                    offset: Offset(0, 2), // Shadow position (x, y)
                  ),
                ],
              ),
              child: Text(
                'What is Career Counselling?',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800], // Darker blue color for text
                ),
              ),
            ),
            SizedBox(height: 20), // Space between header and description

            // Expanded description box with shadow
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(169, 169, 169, 0.2), // Using RGBO for opacity
                      spreadRadius: 1,
                      blurRadius: 6, // Shadow blur effect
                      offset: Offset(0, 4), // Shadow position (x, y)
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Text(
                    'Career counselling helps individuals make informed career choices, '
                        'identify their strengths and weaknesses, and find paths that align '
                        'with their personal interests and professional goals. With the guidance '
                        'of a counsellor, one can receive support in choosing the right career, '
                        'finding education opportunities, and preparing for a fulfilling and successful future.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.6,
                      color: Colors.black87, // Dark text color for better readability
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
