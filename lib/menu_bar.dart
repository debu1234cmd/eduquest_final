import 'package:flutter/material.dart';
import 'logout.dart';

void main() {
  runApp(EduQuestApp());
}

class EduQuestApp extends StatelessWidget {
  const EduQuestApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eduquest247',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StylishPage(),
      routes: {
        '/logout': (context) => LogoutPage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}

class StylishPage extends StatelessWidget {
  const StylishPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu-EduQuest247'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              _showInfoDialog(context, 'Information', 'This is an info dialog.');
            },
          ),
        ],
      ),
      body:
       ListView(
        children: [
           _buildListTile(
            context,
            'About Us',
            Icons.info_rounded,
            () => _showInfoDialog(context, 'About Us',
                'EduQuest247 is an all-in-one educational career guidance app designed to empower users with the tools and resources needed to make informed decisions about their future. It offers a range of services, including career counselling, study abroad advice, internship opportunities, and specialized courses in fields like digital marketing and web development. The app also provides personalized recommendations based on user preferences and goals, helping individuals navigate the vast landscape of educational and career choices. With a user-friendly interface and access to expert insights, EduQuest247 aims to make the process of career exploration more accessible and efficient for all.'),
          ),
          _buildListTile(
            context,
            'Feedback',
            Icons.info_rounded,
            () => _showInfoDialog(context, 'Feedback',
                'EduQuest247 is an all-in-one educational career guidance app designed to empower users with the tools and resources needed to make informed decisions about their future. It offers a range of services, including career counselling, study abroad advice, internship opportunities, and specialized courses in fields like digital marketing and web development. The app also provides personalized recommendations based on user preferences and goals, helping individuals navigate the vast landscape of educational and career choices. With a user-friendly interface and access to expert insights, EduQuest247 aims to make the process of career exploration more accessible and efficient for all.'),
          ),
          _buildListTile(
            context,
            'Privacy',
            Icons.source_outlined,
            () => _showInfoDialog(context, 'Privacy',
                'EduQuest247 relies on a diverse range of trusted sources to provide accurate and up-to-date career guidance and educational information. These sources include industry experts, educational institutions, reputable websites, and research studies, ensuring that users receive reliable insights into various career paths, courses, and opportunities. We continuously update our database with the latest information to help users make informed decisions about their education and career development. EduQuest247 is dedicated to maintaining the highest standards of accuracy and credibility by sourcing content from reliable and verified platforms.'),
          ),
          _buildListTile(
            context,
            'Policy',
            Icons.source_outlined,
            () => _showInfoDialog(context, 'Policy',
                'EduQuest247 relies on a diverse range of trusted sources to provide accurate and up-to-date career guidance and educational information. These sources include industry experts, educational institutions, reputable websites, and research studies, ensuring that users receive reliable insights into various career paths, courses, and opportunities. We continuously update our database with the latest information to help users make informed decisions about their education and career development. EduQuest247 is dedicated to maintaining the highest standards of accuracy and credibility by sourcing content from reliable and verified platforms.'),
          ),
          _buildListTile(
            context,
            'Information',
            Icons.source_outlined,
            () => _showInfoDialog(context, 'Information',
                'EduQuest247 relies on a diverse range of trusted sources to provide accurate and up-to-date career guidance and educational information. These sources include industry experts, educational institutions, reputable websites, and research studies, ensuring that users receive reliable insights into various career paths, courses, and opportunities. We continuously update our database with the latest information to help users make informed decisions about their education and career development. EduQuest247 is dedicated to maintaining the highest standards of accuracy and credibility by sourcing content from reliable and verified platforms.'),
          ),
          _buildListTile(
            context,
            'Sources',
            Icons.source_outlined,
            () => _showInfoDialog(context, 'Sources',
                'EduQuest247 relies on a diverse range of trusted sources to provide accurate and up-to-date career guidance and educational information. These sources include industry experts, educational institutions, reputable websites, and research studies, ensuring that users receive reliable insights into various career paths, courses, and opportunities. We continuously update our database with the latest information to help users make informed decisions about their education and career development. EduQuest247 is dedicated to maintaining the highest standards of accuracy and credibility by sourcing content from reliable and verified platforms.'),
          ),
          _buildListTile(
            context,
            'Terms & Conditions',
            Icons.article_outlined,
            () => _showInfoDialog(context, 'Terms & Conditions',
                'By using EduQuest247, you agree to use the app for lawful purposes only. You are responsible for keeping your account details confidential. We own all app content, and you may not reproduce or distribute it without permission. EduQuest247 is not liable for any decisions based on the information provided. We reserve the right to modify these terms at any time, and your continued use indicates acceptance of these changes.'),
          ),
          SizedBox(height: 20), // Adding some spacing before buttons
          ElevatedButton(
            onPressed: () {
              // Button action
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Set the background color to red
              ),
            child: Text('Log Out'),
          ),
        ],
      ),
    );
  }

  void _showInfoDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  ListTile _buildListTile(BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logout Page'),
      ),
      body: Center(
        child: Text('You have been logged out.'),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Center(
        child: Text('Welcome to the Main Page!'),
      ),
    );
  }
}