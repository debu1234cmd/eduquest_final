
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
        primarySwatch: Colors.blue,
      ),
      home: LoanPage(),
    );
  }
}

// Main LoanPage widget
class LoanPage extends StatelessWidget {
  const LoanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loan Application'),
        backgroundColor: Colors.blue, // App bar color
      ),
      body: Column(
        children: [
          // Header section with sky blue background
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
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
                loanoptiontile('State Bank Of India', context),
                loanoptiontile('Bank Of Baroda', context),
                loanoptiontile('HDFC Bank', context),
                loanoptiontile('Kotak Mahindra Bank', context),
                loanoptiontile('Axis Bank', context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // A function to create a clickable tile for each bank
  Widget loanoptiontile(String bankName, BuildContext context) {
    return ListTile(
      title: Text(bankName),
      tileColor: Colors.white,
      onTap: () {
        // Navigate to bank details page
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoanDetailsPage(bankName)),
        );
      },
    );
  }
}

// LoanDetailsPage widget to show loan details of the selected bank
class LoanDetailsPage extends StatelessWidget {
  final String bankName;

  const LoanDetailsPage(this.bankName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$bankName Loan Details'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Loan Details for $bankName',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Loan Type: Educational Loan',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Interest Rate: 5.5%',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Loan Amount: RS.1000 - RS.50000',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Repayment Terms: 12 months - 60 months',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // You can add navigation or actions to apply for the loan here.
              },
              child: Text('Apply Now'),
            ),
          ],
        ),
      ),
    );
  }
}
