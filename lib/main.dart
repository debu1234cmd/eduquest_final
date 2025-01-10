export 'package:eduquest_final/LOGIN/logout.dart';
import 'package:eduquest_final/BANKS/sbi.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:eduquest_final/SERVICES/career_guidance.dart';
import 'package:eduquest_final/SERVICES/dig_market.dart';
import 'package:eduquest_final/ACCOUNT/icon_account.dart';
import 'package:eduquest_final/SERVICES/internship_page.dart';
import 'package:eduquest_final/LOANS/loans.dart';
import 'package:eduquest_final/SERVICES/scholarship_page.dart';
import 'package:eduquest_final/SERVICES/career_counselling.dart';
import 'package:eduquest_final/SERVICES/study_abroad_page.dart';
import 'package:eduquest_final/SERVICES/web_dev.dart';
import 'menu_bar.dart';
import 'package:eduquest_final/LOGIN/login.dart'; // Ensure this import is correct
import 'package:eduquest_final/LOGIN/signup_page.dart';
import 'package:eduquest_final/LOGIN/logout.dart';
import 'about_us.dart'; // Update this import to use relative path
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:eduquest_final/LOANS/myloans_page.dart'; 
import 'package:eduquest_final/ACCOUNT/edit_account.dart';

void main() {
  runApp(const EduQuestApp());
}

class EduQuestApp extends StatelessWidget {
  const EduQuestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EduQuest247',
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: const Color.fromARGB(255, 111, 53, 165),
          secondary: const Color.fromARGB(255, 111, 53, 165),
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 111, 53, 165),
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 111, 53, 165),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 111, 53, 165),
          ),
        ),
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => const MainPage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/career_counselling': (context) => CareerCounsellingPage(),
        '/digital_marketing': (context) => DigitalMarketingPage(),
        '/web_dev': (context) => WebDevPage(),
        '/career_guidance': (context) => CareerGuidancePage(),
        '/study_abroad': (context) => StudyAbroadPage(),
        '/menu_bar': (context) => StylishPage(),
        '/icon_account': (context) => IconAccountPage(),
        '/dig_market': (context) => DigitalMarketingPage(),
        '/internship_page': (context) => ProvideInternship(),
        '/study_abroad_page': (context) => StudyAbroadPage(),
        '/scholarship_page': (context) => ScholarshipPage(),
        '/loans': (context) => LoanPage(),
        '/logout': (context) => const LogOutPage(),
        '/about_us': (context) => const AboutUsPage(),
        '/myloans_page': (context) => const MyLoansPage(),
        '/edit_account': (context) => const EditAccountApp(),
        '/sbi':(context) => SbiLoan(),
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
        key: const Key('mainAppBar'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/images/edulogo.jpg',
            fit: BoxFit.contain,
          ),
        ),
        title: const Text('EduQuest247',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.5,
              shadows: [
                Shadow(
                  blurRadius: 5.0,
                  color: Color.fromARGB(228, 239, 233, 233),
                  offset: Offset(2.0, 2.0),
                ),
              ],
            )),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              Navigator.pushNamed(context, '/icon_account');
            },
          ),
          IconButton(
            icon: const FaIcon(FontAwesomeIcons.moneyBillWave),
            onPressed: () {
              Navigator.pushNamed(context, '/loans');
            },
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pushNamed(context, '/logout');
            },
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Navigator.pushNamed(context, '/menu_bar');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar Section
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                color: Colors.grey[200],
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for colleges, or courses...',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Ads Section - Horizontal Scroll
// Ads Section
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 111, 53, 165),
                      Color.fromARGB(255, 150, 100, 200),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Text(
                      'Our Partners',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const Icon(Icons.arrow_forward,
                        color: Color.fromARGB(255, 251, 250, 252)),
                  ],
                ),
              ),
              const SizedBox(height: 5),

// Ads Scroll Section
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(100, (index) {
                    return Container(
                      width: 150,
                      height: 120,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 111, 53, 165),
                            Color.fromARGB(255, 150, 100, 200),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Ad ${index + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 5),

// We Provide Section Heading
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 111, 53, 165),
                      Color.fromARGB(255, 150, 100, 200),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Text(
                      'We Provide',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const Icon(Icons.arrow_forward,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ],
                ),
              ),
              const SizedBox(height: 5),

// Services Scroll Section
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(courses.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        if (courses[index] == "Career Counselling") {
                          Navigator.pushNamed(context, '/career_counselling');
                        } else if (courses[index] == "Digital Marketing") {
                          Navigator.pushNamed(context, '/dig_market');
                        } else if (courses[index] == "Web Development") {
                          Navigator.pushNamed(context, '/web_dev');
                        } else if (courses[index] == "Internship") {
                          Navigator.pushNamed(context, '/internship_page');
                        } else if (courses[index] == "Scholarship") {
                          Navigator.pushNamed(context, '/scholarship_page');
                        } else if (courses[index] == "Career Guidance") {
                          Navigator.pushNamed(context, '/career_guidance');
                        } else if (courses[index] == "Study Abroad") {
                          Navigator.pushNamed(context, '/study_abroad_page');
                        } else if (courses[index] ==
                            "Business Administration") {
                          Navigator.pushNamed(context, '/business');
                        }
                      },
                      child: Container(
                        width: 150,
                        height: 120,
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromARGB(255, 111, 53, 165),
                              Color.fromARGB(255, 150, 100, 200),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            courses[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 20),
              // Apply for Loan and Scholarship Section
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 111, 53, 165),
                      Color.fromARGB(255, 150, 100, 200),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Text(
                      'Loans & Scholarships',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const Icon(Icons.arrow_forward,
                        color: Color.fromARGB(255, 253, 253, 253)),
                  ],
                ),
              ),
              const SizedBox(height: 5),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/loans');
                    },
                    child: const Text("Apply for Loan"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/scholarship_page');
                    },
                    child: const Text("Apply for Scholarship"),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Suggested Colleges Section - Horizontal Scroll
              const SizedBox(height: 20),

// Suggested Colleges Section - Horizontal Scroll

              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 111, 53, 165),
                      Color.fromARGB(255, 150, 100, 200),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Text(
                      'Suggested Colleges',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const Icon(Icons.arrow_forward,
                        color: Color.fromARGB(255, 255, 254, 255)),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(suggestedColleges.length, (index) {
                    return Container(
                      width: 150,
                      height: 120,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 111, 53, 165),
                            Color.fromARGB(255, 150, 100, 200),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          suggestedColleges[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 20),
              // Suggested Courses Section - Horizontal Scroll
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 111, 53, 165),
                      Color.fromARGB(255, 150, 100, 200),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Text(
                      'Internships to Boost Your Career',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const Icon(Icons.arrow_forward,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ],
                ),
              ),
              const SizedBox(height: 5),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(internships.length, (index) {
                    return Container(
                      width: 150,
                      height: 120,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromARGB(255, 111, 53, 165),
                            Color.fromARGB(255, 150, 100, 200),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          internships[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(height: 10),
              // Chat with Us box
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    const Icon(Icons.chat,
                        color: Color.fromARGB(255, 111, 53, 165)),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Chat with us',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.send,
                          color: Color.fromARGB(255, 111, 53, 165)),
                      onPressed: () {
                        // Handle chat send action
                      },
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(8.0), // Reduced padding
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                color: const Color.fromARGB(255, 111, 53, 165),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Social media icons row
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.facebook,
                                  color: Color.fromARGB(255, 241, 230, 255),
                                  size: 20),
                              onPressed: () => _launchURL(
                                  'https://facebook.com/eduquest247'),
                            ),
                            IconButton(
                              icon: const FaIcon(FontAwesomeIcons.instagram,
                                  color: Color.fromARGB(255, 241, 230, 255),
                                  size: 20),
                              onPressed: () => _launchURL(
                                  'https://instagram.com/eduquest247'),
                            ),
                            IconButton(
                              icon: const FaIcon(FontAwesomeIcons.youtube,
                                  color: Color.fromARGB(255, 241, 230, 255),
                                  size: 20),
                              onPressed: () => _launchURL(
                                  'https://youtu.be/MoWc3Q-M4zA?si=XVhhqKjfYdzZ9MRS'),
                            ),
                          ],
                        ),
                        // About Us section
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/about_us');
                          },
                          child: const Text(
                            'About Us',
                            style: TextStyle(
                              color: Color.fromARGB(255, 241, 230, 255),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'All Rights Reserved @EduQuest247',
                          style: TextStyle(
                            color: Color.fromARGB(255, 241, 230, 255),
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
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
