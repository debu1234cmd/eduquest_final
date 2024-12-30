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
      home: WebDevPage(),
    );
  }
}

class WebDevPage extends StatelessWidget {
  const WebDevPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // White background
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Heading with sky-blue box and shadow
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
                decoration: BoxDecoration(
                  color: Colors.lightBlue[200], // Sky blue box
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 4),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Text(
                  'Web Development',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 40), // Space between heading and description
              // Description box with shadow
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade300),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 4),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Text(
                  'Web development involves the creation of websites and applications for the internet or intranet. It includes aspects like web design, web programming, and database management to build dynamic, functional websites.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    height: 1.6, // Line height for better readability
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
