
// import 'package:flutter/material.dart';
// import 'home_page.dart'; 
// // import 'cart_page.dart';
// // import 'favorite_page.dart';
// // import 'profile_page.dart';
// import 'splash_screen.dart';
// import 'welcome_screen.dart';
// import 'login_screen.dart';
// import 'signup_screen.dart';
// // import 'categories.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'LuxLodge',
//       home:  SplashScreen(), // يبدأ بصفحة السبلاتش
//       routes: {
//         '/welcome': (context) => const WelcomePage(),
//         '/login': (context) => const LoginPage(),
//         '/signup': (context) => const SignUpPage(),
//         '/main': (context) => const MainPage(),
//         // '/categories': (context) => const Categories(),
//       },
//     );
//   }
// }

// class MainPage extends StatefulWidget {
//   const MainPage({super.key});

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = [
//     const HomePage(),
//     // const CartPage(),
//     // const FavoritePage(),
//     // const ProfilePage(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         selectedItemColor: Colors.green, 
//         unselectedItemColor: Colors.grey,
//         type: BottomNavigationBarType.fixed,
//         backgroundColor: Colors.white,
//         elevation: 10,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: "Cart",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: "Favorite",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: "Profile",
//           ),
//         ],
//       ),
//     );
//   }
// }


























import 'package:flutter/material.dart';
import 'home_page.dart';
import 'cart_page.dart';  // تأكد من وجود صفحة Cart
import 'favorite_page.dart';  // تأكد من وجود صفحة Favorite
import 'profile_page.dart';  // تأكد من وجود صفحة Profile
import 'splash_screen.dart';
import 'welcome_screen.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LuxLodge',
      home:  SplashScreen(), // يبدأ بصفحة السبلاتش
      routes: {
        '/welcome': (context) => const WelcomePage(),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const CartPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 10,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
