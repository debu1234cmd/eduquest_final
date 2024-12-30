
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
      home: CareerGuidancePage(),
    );
  }
}

class CareerGuidancePage extends StatelessWidget {
  const CareerGuidancePage ({super.key});

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
                  'Career Guidance',
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
                  'Career guidance is essential in helping individuals navigate their professional paths, offering valuable insights into various career options, skills development, and job market trends. It provides personalized advice tailored to ones strengths, interests, and goals, helping individuals make informed decisions about their future. Whether through one-on-one counseling, workshops, or assessments, career guidance assists in identifying opportunities, overcoming challenges, and setting realistic, achievable career goals. With expert advice, individuals can explore diverse career paths, improve employability, and make confident choices that align with their aspirations. Ultimately, career guidance empowers individuals to shape their professional journey and achieve long-term success.',
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
