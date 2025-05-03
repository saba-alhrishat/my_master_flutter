// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Hotel Booking',
//       debugShowCheckedModeBanner: false,
//       home: const HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String selectedFilter = 'all';
//   int _selectedIndex = 0;

//   final List<Map<String, String>> rooms = [


// {
//   "title": "Standard Room",
//   "description": "Perfect for solo travelers or couples, our standard room offers a cozy retreat with all the essentials for a comfortable stay.",
//   "image": "https://images.unsplash.com/photo-1566073771259-6a8506099945",
//   "price": "85 JD/night",
//   "type": "standard"
// },
// {
//   "title": "Deluxe Room",
//   "description": "Enjoy extra space and luxury in our deluxe room featuring a king-size bed, seating area, and stunning views.",
//   "image": "https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
//   "price": "156 JD/night",
//   "type": "deluxe"
// },
// {
//   "title": "Executive Suite",
//   "description": "Designed for business travelers, the executive suite includes a dedicated workspace, high-speed internet, and a spacious living area.",
//   "image": "https://images.unsplash.com/photo-1600566753190-17f0baa2a6c3?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80",
//   "price": "213 JD/night",
//   "type": "suite"
// },
// {
//   "title": "Family Room",
//   "description": "Traveling with family? Our family room provides ample space, multiple beds, and kid-friendly amenities to ensure a comfortable stay.",
//   "image": "https://images.unsplash.com/photo-1566073771259-6a8506099945",
//   "price": "178 JD/night",
//   "type": "family"
// }

//   ];

//   List<Map<String, String>> get filteredRooms {
//     if (selectedFilter == 'all') return rooms;
//     return rooms.where((room) => room['type'] == selectedFilter).toList();
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       body: IndexedStack(
//         index: _selectedIndex,
//         children: [
//           buildHomePage(), // 0: Home
//           const CartPage(), // 1: Cart
//           const FavoritePage(), // 2: Favorite
//           const ProfilePage(), // 3: Profile
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         selectedItemColor: Color(0xFFDB6574),
//         unselectedItemColor: Colors.grey,
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

//   Widget buildHomePage() {
//     return SafeArea(
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Hero Section
//             Container(
//               height: 280,
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: NetworkImage("https://images.unsplash.com/photo-1566073771259-6a8506099945"),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     colors: [
//                       Colors.black.withOpacity(0.6),
//                       Colors.black.withOpacity(0.1),
//                     ],
//                   ),
//                 ),
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'Discover the Best',
//                         style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
//                       ),
//                       const Text(
//                         'Book Now',
//                         style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
//                       ),
//                       const Text(
//                         'Easy & Comfortable',
//                         style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
//                       ),
//                       const SizedBox(height: 20),
//                       ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor:  Color(0xFFDB6574),
//                           padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                         ),
//                         child: const Text(
//                           'Book Now',
//                           style: TextStyle(fontSize: 16, color: Colors.white),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),

//             // Filter Section
//             Padding(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'Find your ideal room',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 12),
//                   Wrap(
//                     spacing: 10,
//                     runSpacing: 10,
//                     children: [
//                       buildFilterChip('All', 'all'),
//                       buildFilterChip('Standard', 'standard'),
//                       buildFilterChip('Deluxe', 'deluxe'),
//                       buildFilterChip('Suite', 'suite'),
//                       buildFilterChip('Family', 'family'),
//                     ],
//                   ),
//                 ],
//               ),
//             ),

//             // Rooms Section
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'Our Rooms',
//                     style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 12),
//                   ListView.builder(
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     itemCount: filteredRooms.length,
//                     itemBuilder: (context, index) {
//                       final room = filteredRooms[index];
//                       return Padding(
//                         padding: const EdgeInsets.only(bottom: 16),
//                         child: RoomCard(
//                           title: room['title']!,
//                           description: room['description']!,
//                           imageUrl: room['image']!,
//                           price: room['price']!,
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   FilterChip buildFilterChip(String label, String value) {
//     return FilterChip(
//       label: Text(label),
//       selected: selectedFilter == value,
//       onSelected: (_) {
//         setState(() {
//           selectedFilter = value;
//         });
//       },
//     );
//   }
// }

// class RoomCard extends StatelessWidget {
//   final String title;
//   final String description;
//   final String imageUrl;
//   final String price;

//   const RoomCard({
//     super.key,
//     required this.title,
//     required this.description,
//     required this.imageUrl,
//     required this.price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       elevation: 4,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
//             child: Image.network(
//               imageUrl,
//               height: 180,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                     Text(price, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color:  Color(0xFFDB6574))),
//                   ],
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   description,
//                   maxLines: 3,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(fontSize: 14, color: Colors.grey[700]),
//                 ),
//                 const SizedBox(height: 12),
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => BookingPage(
//                             title: title,
//                             description: description,
//                             imageUrl: imageUrl,
//                             price: price,
//                           ),
//                         ),
//                       );
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Color(0xFFDB6574),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                     child: const Text(
//                       'Booking',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// // Booking Page
// class BookingPage extends StatelessWidget {
//   final String title;
//   final String description;
//   final String imageUrl;
//   final String price;

//   const BookingPage({
//     super.key,
//     required this.title,
//     required this.description,
//     required this.imageUrl,
//     required this.price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Booking Details'),
//         backgroundColor:  Color(0xFFDB6574),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(16),
//               child: Image.network(
//                 imageUrl,
//                 height: 250,
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               title,
//               style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             Text(
//               price,
//               style: TextStyle(fontSize: 20, color:  Color(0xFFDB6574), fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               description,
//               style: TextStyle(fontSize: 16, color: Colors.grey[800]),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // الصفحات التانية
// class CartPage extends StatelessWidget {
//   const CartPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('This is Cart Page', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class FavoritePage extends StatelessWidget {
//   const FavoritePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('This is Favorite Page', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('This is Profile Page', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

















// flutter *******************************************************



// import 'package:flutter/material.dart';
// import 'package:loginmaster/cart_page.dart';
// import 'package:loginmaster/favorite_page.dart';
// import 'package:loginmaster/profile_page.dart';
// import 'api_service.dart';  // استيراد ApiService


// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String selectedFilter = 'all';
//   int _selectedIndex = 0;

//   List<Map<String, String>> rooms = [];

//   @override
//   void initState() {
//     super.initState();
//     fetchRooms();  // جلب الغرف من الـ API
//   }

//   // جلب الغرف من الـ API
// void fetchRooms() async {
//   try {
//     final fetchedRooms = await ApiService.fetchRooms();
//     setState(() {
//       // تحويل البيانات من الـ API إلى تنسيق Map
//       rooms = List<Map<String, String>>.from(fetchedRooms.map((room) {
//         return {
//           "title": room['title'] as String,
//           "description": room['description'] as String,
//           "image": room['image'] as String,
//           "price": room['price'] as String,
//           "type": room['type'] as String,
//         };
//       }));
//     });
//   } catch (e) {
//     // التعامل مع الأخطاء مثل فشل الاتصال بالـ API
//     print('Error fetching rooms: $e');
//   }
// }


//   List<Map<String, String>> get filteredRooms {
//     if (selectedFilter == 'all') return rooms;
//     return rooms.where((room) => room['type'] == selectedFilter).toList();
//   }

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       body: IndexedStack(
//         index: _selectedIndex,
//         children: [
//           buildHomePage(), // 0: Home
//           const CartPage(), // 1: Cart
//           const FavoritePage(), // 2: Favorite
//           const ProfilePage(), // 3: Profile
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         selectedItemColor: Color(0xFFDB6574),
//         unselectedItemColor: Colors.grey,
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

//   Widget buildHomePage() {
//     return SafeArea(
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             // Hero Section
//             Container(
//               height: 280,
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: NetworkImage("https://images.unsplash.com/photo-1566073771259-6a8506099945"),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: Container(
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     colors: [
//                       Colors.black.withOpacity(0.6),
//                       Colors.black.withOpacity(0.1),
//                     ],
//                   ),
//                 ),
//                 child: Center(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Text(
//                         'Discover the Best',
//                         style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
//                       ),
//                       const Text(
//                         'Book Now',
//                         style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
//                       ),
//                       const Text(
//                         'Easy & Comfortable',
//                         style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
//                       ),
//                       const SizedBox(height: 20),
//                       ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor: Color(0xFFDB6574),
//                           padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                         ),
//                         child: const Text(
//                           'Book Now',
//                           style: TextStyle(fontSize: 16, color: Colors.white),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),

//             // Filter Section
//             Padding(
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'Find your ideal room',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 12),
//                   Wrap(
//                     spacing: 10,
//                     runSpacing: 10,
//                     children: [
//                       buildFilterChip('All', 'all'),
//                       buildFilterChip('Standard Room', 'Standard Room'),
//                       buildFilterChip('Deluxe Room', 'Deluxe Room'),
//                       buildFilterChip('Executive Suite', 'Executive Suite'),
//                       buildFilterChip('Family Room', 'Family Room'),
//                       buildFilterChip('Honeymoon Suite', 'Honeymoon Suite'),
//                       buildFilterChip('Presidential Suite', 'Presidential Suite'),
//                     ],
//                   ),
//                 ],
//               ),
//             ),

//             // Rooms Section
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'Our Rooms',
//                     style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 12),
//                   ListView.builder(
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     itemCount: filteredRooms.length,
//                     itemBuilder: (context, index) {
//                       final room = filteredRooms[index];
//                       return Padding(
//                         padding: const EdgeInsets.only(bottom: 16),
//                         child: RoomCard(
//                           title: room['title']!,
//                           description: room['description']!,
//                           imageUrl: room['image']!,
//                           price: room['price']!,
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   FilterChip buildFilterChip(String label, String value) {
//     return FilterChip(
//       label: Text(label),
//       selected: selectedFilter == value,
//       onSelected: (_) {
//         setState(() {
//           selectedFilter = value;
//         });
//       },
//     );
//   }
// }

// class RoomCard extends StatelessWidget {
//   final String title;
//   final String description;
//   final String imageUrl;
//   final String price;

//   const RoomCard({
//     super.key,
//     required this.title,
//     required this.description,
//     required this.imageUrl,
//     required this.price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       elevation: 4,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
//             child: Image.network(
//               imageUrl,
//               height: 180,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                     Text(price, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFDB6574))),
//                   ],
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   description,
//                   maxLines: 3,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(fontSize: 14, color: Colors.grey[700]),
//                 ),
//                 const SizedBox(height: 12),
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Color(0xFFDB6574),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                     child: const Text(
//                       'Booking',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
























import 'package:flutter/material.dart';
import 'package:loginmaster/cart_page.dart';
import 'package:loginmaster/favorite_page.dart';
import 'package:loginmaster/profile_page.dart';
import 'api_service.dart';  // استيراد ApiService

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedFilter = 'all';
  int _selectedIndex = 0;
  List<Map<String, String>> rooms = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchRooms();  // جلب الغرف من الـ API
  }

  // جلب الغرف من الـ API
  void fetchRooms() async {
    try {
      final fetchedRooms = await ApiService.fetchRooms();
      setState(() {
        rooms = List<Map<String, String>>.from(fetchedRooms.map((room) {
          return {
            "title": room['title'] as String,
            "description": room['description'] as String,
            "image": room['image'] as String,
            "price": room['price'] as String,
            "type": room['type'] as String,
          };
        }));
        isLoading = false;
      });
    } catch (e) {
      print('Error fetching rooms: $e');
      isLoading = false;
    }
  }

  List<Map<String, String>> get filteredRooms {
    if (selectedFilter.toLowerCase() == 'all') return rooms;
    return rooms.where((room) =>
      room['type']!.toLowerCase() == selectedFilter.toLowerCase()
    ).toList();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          buildHomePage(), // 0: Home
          const CartPage(), // 1: Cart
          const FavoritePage(), // 2: Favorite
          const ProfilePage(), // 3: Profile
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color(0xFFDB6574),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }

  Widget buildHomePage() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              height: 280,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://images.unsplash.com/photo-1566073771259-6a8506099945"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.1),
                    ],
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Discover the Best', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white)),
                      const Text('Book Now', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white)),
                      const Text('Easy & Comfortable', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white)),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFDB6574),
                          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: const Text('Book Now', style: TextStyle(fontSize: 16, color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Filter Section
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Find your ideal room', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      buildFilterChip('All', 'all'),
                      buildFilterChip('Standard Room', 'Standard Room'),
                      buildFilterChip('Deluxe Room', 'Deluxe Room'),
                      buildFilterChip('Executive Suite', 'Executive Suite'),
                      buildFilterChip('Family Room', 'Family Room'),
                      buildFilterChip('Honeymoon Suite', 'Honeymoon Suite'),
                      buildFilterChip('Presidential Suite', 'Presidential Suite'),
                    ],
                  ),
                ],
              ),
            ),

            // Rooms Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Our Rooms', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),
                  isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : filteredRooms.isEmpty
                          ? const Center(child: Text("No rooms available for this filter."))
                          : ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: filteredRooms.length,
                              itemBuilder: (context, index) {
                                final room = filteredRooms[index];
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: RoomCard(
                                    title: room['title']!,
                                    description: room['description']!,
                                    imageUrl: room['image']!,
                                    price: room['price']!,
                                  ),
                                );
                              },
                            ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  FilterChip buildFilterChip(String label, String value) {
    return FilterChip(
      label: Text(label),
      selected: selectedFilter == value,
      onSelected: (_) {
        setState(() {
          selectedFilter = value;
        });
      },
    );
  }
}

class RoomCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String price;

  const RoomCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.network(
              imageUrl,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('\$$price', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFDB6574))),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFDB6574),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: const Text('Booking', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
