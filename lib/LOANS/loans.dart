import 'package:flutter/material.dart';

// Main function to run the app
void main() {
  runApp(EduQuestApp());
}

// Main app widget
class EduQuestApp extends StatelessWidget {
  const EduQuestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loans',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 111, 53, 165),
        ),
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.white),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 111, 53, 165),
          elevation: 0,
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 240, 240, 240),
      ),
      home: const LoanPage(),
    );
  }
}

class LoanPage extends StatelessWidget {
  const LoanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loans'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: const Text(
                'We acknowledge you to take an educational loan from the following banks:',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // List of banks offering loans
            Expanded(
              child: ListView(
                children: [
                  loanOptionTile('State Bank Of India', context),
                  loanOptionTile('Bank Of Baroda', context),
                  loanOptionTile('HDFC Bank', context),
                  loanOptionTile('Kotak Mahindra Bank', context),
                  loanOptionTile('Axis Bank', context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to create a styled loan option tile
  Widget loanOptionTile(String bankName, BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
      ),
      elevation: 3,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        title: Text(
          bankName,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 111, 53, 165),
          ),
        ),
        trailing: const Icon(Icons.arrow_forward, color: Color.fromARGB(255, 111, 53, 165)),
      ),
    );
  }
}