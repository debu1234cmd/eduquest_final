
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
      home: DigitalMarketingPage(),
    );
  }
}

class DigitalMarketingPage extends StatelessWidget {
  const DigitalMarketingPage({super.key});

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
                  'Digital Marketing',
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
                  border: Border.all(color: Colors.blue.shade300),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 4),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Text(
                  'Digital marketing refers to the use of digital channels, platforms, and technologies to promote and advertise products or services to a targeted audience. It encompasses a wide range of online strategies, including search engine optimization (SEO), social media marketing, email marketing, content marketing, pay-per-click (PPC) advertising, and influencer partnerships. With the rapid growth of the internet and mobile technologies, digital marketing has become essential for businesses looking to reach a global audience, engage with customers in real-time, and track their performance using data analytics. It offers flexibility, cost-effectiveness, and the ability to personalize content, making it an invaluable tool for businesses of all sizes in todays competitive market.',
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
