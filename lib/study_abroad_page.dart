
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
      home: StudyAbroadPage(),
    );
  }
}

class StudyAbroadPage extends StatelessWidget {
  const StudyAbroadPage({super.key});

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
                  'Study Abroad',
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
                  ' Studying abroad offers students a unique opportunity to expand their academic and personal horizons by immersing themselves in a new cultural and educational environment. It provides a chance to experience different teaching styles, gain global perspectives, and enhance language skills, all while pursuing a degree or specific academic goals. Beyond academics, studying abroad fosters personal growth, independence, and adaptability as students navigate new cities, interact with diverse populations, and develop a deeper understanding of the world. It also opens doors to international career opportunities and global networks, providing students with a competitive edge in today’s interconnected job market. Whether for a semester, a year, or a full degree program, studying abroad is an enriching experience that broadens both the mind and future possibilities.',
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
