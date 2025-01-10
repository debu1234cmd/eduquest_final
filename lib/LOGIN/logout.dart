import 'package:eduquest_final/ACCOUNT/icon_account.dart';
import 'package:flutter/material.dart';
import 'package:eduquest_final/LOGIN/login.dart';
import 'package:get/get.dart';

void main() {
  runApp(EduQuestApp(
    home: LogOutPage(),
    title: '',
  ));
}

class LogOutPage extends StatefulWidget {
  const LogOutPage({super.key});

  @override
  LogOutPageState createState() => LogOutPageState();
}

class LogOutPageState extends State<LogOutPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _logout() {
    if (_formKey.currentState!.validate()) {
      // Perform login logic here
      Get.to(() => LogOutPage());
    } else {
      Get.offAll(() => const LoginPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EduQuest247'),
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 400,
                width: 400,
                child: Image.asset(
                  'assets/images/logout.jpg',
                  fit: BoxFit.contain,
                ),
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle:
                      TextStyle(color: const Color.fromARGB(255, 111, 53, 165)),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: const Color.fromARGB(255, 111, 53, 165)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _logout,
                child: const Text('Log Out'),
              ),
              const SizedBox(height: 20),
              Text('EduQuest247 wishes you GoodBye!')
            ],
          ),
        ),
      ),
    );
  }
}
