import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'career_guidance.dart';
import 'dig_market.dart';
import 'icon_account.dart';
import 'internship_page.dart';
import 'loans.dart';
import 'scholarship_page.dart';
import 'career_counselling.dart';
import 'study_abroad_page.dart';
import 'web_dev.dart';
import 'menu_bar.dart';
import 'logout.dart';

void main() {
  runApp(EduQuestApp());
}

class EduQuestApp extends StatelessWidget {
  const EduQuestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EduQuest247',
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/career_counselling': (context) => CareerCounsellingPage(),
        '/digital_marketing': (context) => DigitalMarketingPage(),
        '/web_dev': (context) => WebDevPage(),
        '/career_guidance': (context) => CareerGuidancePage(),
        '/study_abroad': (context) => StudyAbroadPage(),
        '/menu_bar': (context) => StylishPage(),
        '/icon_account': (context) => IconAccountPage(),
        '/dig_market': (context) => DigitalMarketingPage(),
        '/internship_page': (context) => ProvideInternship(),
        '/career_guide_page': (context) => CareerGuidancePage(),
        '/study_abroad_page': (context) => StudyAbroadPage(),
        '/scholarship_page': (context) => ScholarshipPage(),
        '/loans': (context) => LoanPage(),
        '/logout': (context) => LogOutPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $urlString');
    }
  }

  @override
  Widget build(BuildContext context) {
    // List of course names to display
    List<String> courses = [
      "Career Counselling",
      "Digital Marketing",
      "Web Development",
      "Internship",
      "Scholarship",
      "Career Guidance",
      "Study Abroad",
    ];

    List<String> suggestedColleges = [
      "B.Tech",
      "Business Management",
      "Computer Applications",
      "Media Science",
      "Arts & Culture",
    ];
    List<String> internships = [
      "Web Development",
      "Digital Marketing",
      "App Development",
      "Database Management",
      "Market Analysis",
      "Network Marketing",
      "Business Administration",
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 111, 53, 165),
        title: Text(
          'EduQuest247',
          style: TextStyle(
            color: const Color.fromARGB(255, 241, 230, 255),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle, color: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/icon_account');
            },
          ),
          IconButton(
            icon: Icon(Icons.attach_money_sharp, color: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/loans');
            },
          ),
          IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/menu_bar');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar Section
              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                color: Colors.grey[200],
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for colleges, or courses...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Ads Section - Horizontal Scroll
              Text(
                'Ads',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(10, (index) {
                    return Container(
                      width: 100,
                      height: 120,
                      margin: EdgeInsets.all(5),
                      color: Colors.grey,
                      child: Center(child: Text('Ad ${index + 1}')),
                    );
                  }),
                ),
              ),
              SizedBox(height: 20),

              // We Provide Section - Horizontal Scroll
              Text(
                'We Provide',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(courses.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        // Navigate to the specific page based on course selection
                        if (courses[index] == "Career Counselling") {
                          Navigator.pushNamed(context, '/career_counselling');
                        } else if (courses[index] == "Digital Marketing") {
                          Navigator.pushNamed(context, '/dig_market');
                        } else if (courses[index] == "Web Development") {
                          Navigator.pushNamed(context, '/web_dev');
                        } else if (courses[index] == "Internship") {
                          Navigator.pushNamed(context, '/internship_page');
                        } else if (courses[index] == "Career Guidance") {
                          Navigator.pushNamed(context, '/career_guide_page');
                        } else if (courses[index] == "Study Abroad") {
                          Navigator.pushNamed(context, '/study_abroad_page');
                        } else if (courses[index] == "Scholarship") {
                          Navigator.pushNamed(context, '/scholarship_page');
                        }
                      },
                      child: Container(
                        width: 150,
                        height: 120,
                        margin: EdgeInsets.all(5),
                        color: Colors.grey[500],
                        child: Center(
                          child: Text(
                            courses[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 20),

              // Apply for Loan and Scholarship Section
              Text(
                'Loan & Scholarship',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, '/loans'); // Handle Apply for Loan action
                    },
                    child: Text("Apply for Loan"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/scholarship_page');
                      // Handle Apply for Scholarship action
                    },
                    child: Text("Apply for Scholarship"),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Suggested Colleges Section - Horizontal Scroll
              Text(
                'Suggested Colleges',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(suggestedColleges.length, (index) {
                    return Container(
                      width: 150,
                      height: 120,
                      margin: EdgeInsets.all(5),
                      color: Colors.blue[200],
                      child: Center(
                        child: Text(
                          suggestedColleges[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 20),

              // Suggested Courses Section - Horizontal Scroll
              Text(
                'Internships to Boost Your Career',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(internships.length, (index) {
                    return Container(
                      width: 150,
                      height: 120,
                      margin: EdgeInsets.all(5),
                      color: Colors.green[200],
                      child: Center(
                        child: Text(
                          courses[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.zero,
                color: const Color.fromARGB(
                    255, 111, 53, 165), // Change the color to violet
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.facebook,
                            color: const Color.fromARGB(255, 241, 230, 255),
                            size: 20,
                          ),
                          onPressed: () =>
                              _launchURL('https://facebook.com/eduquest247'),
                        ),
                        SizedBox(width: 10),
                        IconButton(
                          icon: Icon(
                            Icons.camera_alt,
                            color: const Color.fromARGB(255, 241, 230, 255),
                            size: 20,
                          ),
                          onPressed: () =>
                              _launchURL('https://instagram.com/eduquest247'),
                        ),
                        SizedBox(width: 10),
                        IconButton(
                          icon: Icon(
                            Icons.play_circle_fill,
                            color: const Color.fromARGB(255, 241, 230, 255),
                            size: 20,
                          ),
                          onPressed: () => _launchURL(
                              'https://youtu.be/MoWc3Q-M4zA?si=XVhhqKjfYdzZ9MRS'),
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'About Us',
                              style: TextStyle(
                                color: const Color.fromARGB(255, 241, 230, 255),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 1000,
                              child: Text(
                                'EduQuest247 is dedicated' +
                                    'to providing quality education' +
                                    'resources and opportunities for' +
                                    'students worldwide.',
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 241, 230, 255),
                                  fontSize: 10,
                                  height: 1.2,
                                ),
                                textAlign: TextAlign.left,
                                maxLines: 4,
                                // Limit number of lines
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      '© 2024 EduQuest247. All rights reserved.',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 241, 230, 255),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
