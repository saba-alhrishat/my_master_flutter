import 'package:flutter/material.dart';
import 'login_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Logo with Elegant Shadow
              Hero(
                tag: 'app-logo',
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                  
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/logo.png",
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 40),
              
              // Elegant Title
              Text(
                "Welcome to LuxLodge",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  letterSpacing: 0.5,
                ),
                textAlign: TextAlign.center,
              ),
              
              const SizedBox(height: 16),
              
              // Professional Subtitle
            
              
              const SizedBox(height: 50),
              
              // Professional Button
              SizedBox(
                width: 220,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 3,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const LoginPage(),
                        transitionsBuilder: (_, a, __, c) => 
                          FadeTransition(opacity: a, child: c),
                        transitionDuration: const Duration(milliseconds: 300),
                      ),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, size: 18, color: Colors.white),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 30),
              
              // Footer Text
            Column(
  mainAxisAlignment: MainAxisAlignment.end, 
// يضع المحتوى في الأسفل
  children: [
    Text(
      "© 2025 LuxLodge. All rights reserved",
      
      style: TextStyle(
        color: const Color.fromARGB(255, 23, 23, 23),
        fontSize: 10,
        
        
      ),
      
    ),
  ],
  
)
            ],
          ),
        ),
      ),
    );
  }
}