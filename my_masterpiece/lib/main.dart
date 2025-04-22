
import 'package:flutter/material.dart';
import 'splash_screen.dart';
import 'login_screen.dart'; // تأكدي من وجود الملف
import 'signup_screen.dart'; // تأكدي من وجود الملف

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LUXLODGE',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
      },
    );
  }
}
