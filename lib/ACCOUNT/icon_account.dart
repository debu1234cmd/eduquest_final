import 'package:eduquest_final/ACCOUNT/edit_account.dart';
import 'package:eduquest_final/LOANS/myloans_page.dart';
import 'package:eduquest_final/LOGIN/logout.dart';
import 'package:flutter/material.dart';

class EduQuestApp extends StatelessWidget {
  const EduQuestApp({super.key, required LogOutPage home, required String title});

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
      initialRoute: '/',
      routes: {
        '/myloans_page': (context) => const MyLoansPage(),
        '/edit_account': (context) => const EditAccountApp(),
      },
    );
  }
}

class IconAccountPage extends StatelessWidget {
  const IconAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Account'),
        backgroundColor: Color.fromARGB(255, 111, 53, 165),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  // Profile Image Section
                  CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/images/picture2.jpg'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'ID: EQ247001',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 30),

                  // User Info Cards
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        _buildInfoRow(Icons.person, 'Username', 'johndoe123'),
                        _buildInfoRow(Icons.cake, 'Birthday', '01/01/1990'),
                        _buildInfoRow(Icons.phone, 'Mobile', '+1234567890'),
                        _buildInfoRow(Icons.lock, 'Password', '********'),
                        _buildInfoRow(Icons.email, 'Email', 'john@example.com'),
                      ],
                    ),
                  ),

                  SizedBox(height: 30),

                  // Edit Profile Button
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/edit_account');
                    },
                    icon: Icon(Icons.edit),
                    label: Text('Edit Profile'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 111, 53, 165),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/myloans_page');
                    },
                    icon: Icon(Icons.edit),
                    label: Text('My Loans'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 111, 53, 165),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  // Decorative Image
                  SizedBox(height: 20),
                  Image.asset(
                    'assets/images/pic1234.png',
                    height: 150,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: Color.fromARGB(255, 111, 53, 165)),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 14,
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
