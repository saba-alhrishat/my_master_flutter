
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   String selectedFilter = 'all';

//   final List<Map<String, String>> rooms = [
//     {
//       "title": "Standard Room",
//       "description": "Perfect for solo travelers or couples, our standard room offers a cozy retreat with all the essentials for a comfortable stay.",
//       "image": "https://images.unsplash.com/photo-1600585154340-be6161a56a0c",
//       "price": "\$120/night",
//       "type": "standard"
//     },
//     {
//       "title": "Deluxe Room",
//       "description": "Enjoy extra space and luxury in our deluxe room featuring a king-size bed, seating area, and stunning views.",
//       "image": "https://images.unsplash.com/photo-1600585154340-be6161a56a0c",
//       "price": "\$220/night",
//       "type": "deluxe"
//     },
//     {
//       "title": "Executive Suite",
//       "description": "Designed for business travelers, the executive suite includes a dedicated workspace, high-speed internet, and a spacious living area.",
//       "image": "https://images.unsplash.com/photo-1600585154340-be6161a56a0c",
//       "price": "\$300/night",
//       "type": "suite"
//     },
//     {
//       "title": "Family Room",
//       "description": "Traveling with family? Our family room provides ample space, multiple beds, and kid-friendly amenities to ensure a comfortable stay.",
//       "image": "https://images.unsplash.com/photo-1600585154340-be6161a56a0c",
//       "price": "\$250/night",
//       "type": "family"
//     },
//   ];

//   List<Map<String, String>> get filteredRooms {
//     if (selectedFilter == 'all') return rooms;
//     return rooms.where((room) => room['type'] == selectedFilter).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               // Hero section
//               Container(
//                 height: 280,
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                     image: NetworkImage("https://images.unsplash.com/photo-1566073771259-6a8506099945"),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [
//                         Colors.black.withOpacity(0.6),
//                         Colors.black.withOpacity(0.1),
//                       ],
//                     ),
//                   ),
//                   child: Center(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Text(
//                           'Discover the Best',
//                           style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
//                         ),
//                         const Text(
//                           'Book Now',
//                           style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
//                         ),
//                         const Text(
//                           'Easy & Comfortable',
//                           style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
//                         ),
//                         const SizedBox(height: 20),
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.brown[800],
//                             padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                           ),
//                           child: const Text(
//                             'Book Now',
//                             style: TextStyle(fontSize: 16, color: Colors.white),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ),

//               // Filter section
//               Padding(
//                 padding: const EdgeInsets.all(16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       'Find your ideal room',
//                       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(height: 12),
//                     Wrap(
//                       spacing: 10,
//                       runSpacing: 10,
//                       children: [
//                         FilterChip(
//                           label: const Text('All'),
//                           selected: selectedFilter == 'all',
//                           onSelected: (_) {
//                             setState(() => selectedFilter = 'all');
//                           },
//                         ),
//                         FilterChip(
//                           label: const Text('Standard'),
//                           selected: selectedFilter == 'standard',
//                           onSelected: (_) {
//                             setState(() => selectedFilter = 'standard');
//                           },
//                         ),
//                         FilterChip(
//                           label: const Text('Deluxe'),
//                           selected: selectedFilter == 'deluxe',
//                           onSelected: (_) {
//                             setState(() => selectedFilter = 'deluxe');
//                           },
//                         ),
//                         FilterChip(
//                           label: const Text('Suite'),
//                           selected: selectedFilter == 'suite',
//                           onSelected: (_) {
//                             setState(() => selectedFilter = 'suite');
//                           },
//                         ),
//                         FilterChip(
//                           label: const Text('Family'),
//                           selected: selectedFilter == 'family',
//                           onSelected: (_) {
//                             setState(() => selectedFilter = 'family');
//                           },
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),

//               // Rooms section
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       'Our Rooms',
//                       style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(height: 12),
//                     ListView.builder(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemCount: filteredRooms.length,
//                       itemBuilder: (context, index) {
//                         final room = filteredRooms[index];
//                         return Padding(
//                           padding: const EdgeInsets.only(bottom: 16),
//                           child: RoomCard(
//                             title: room['title']!,
//                             description: room['description']!,
//                             imageUrl: room['image']!,
//                             price: room['price']!,
//                           ),
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
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
//                     Text(title,
//                         style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//                     Text(price,
//                         style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.brown[800])),
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
//                       backgroundColor: Colors.brown[800],
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                     child: const Text(
//                       'View Details',
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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedFilter = 'all';

final List<Map<String, String>> rooms = [
  {
    "title": "Standard Room",
    "description": "Perfect for solo travelers or couples, our standard room offers a cozy retreat with all the essentials for a comfortable stay.",
    "image": "https://images.unsplash.com/photo-1566073771259-6a8506099945",
    "price": "\$120/night",
    "type": "standard"
  },
  {
    "title": "Deluxe Room",
    "description": "Enjoy extra space and luxury in our deluxe room featuring a king-size bed, seating area, and stunning views.",
    "image": "https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=800&q=80",
    "price": "\$220/night",
    "type": "deluxe"
  },
  {
    "title": "Executive Suite",
    "description": "Designed for business travelers, the executive suite includes a dedicated workspace, high-speed internet, and a spacious living area.",
    "image": "https://images.unsplash.com/photo-1600566753190-17f0baa2a6c3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=800&q=80",
    "price": "\$300/night",
    "type": "suite"
  },
  {
    "title": "Family Room", 
    "description": "Traveling with family? Our family room provides ample space, multiple beds, and kid-friendly amenities to ensure a comfortable stay.",
    "image": "https://images.unsplash.com/photo-1566073771259-6a8506099945",
    "price": "\$250/night",
    "type": "family"
  },
];


  List<Map<String, String>> get filteredRooms {
    if (selectedFilter == 'all') return rooms;
    return rooms.where((room) => room['type'] == selectedFilter).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Hero section
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
                        const Text(
                          'Discover the Best',
                          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        const Text(
                          'Book Now',
                          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        const Text(
                          'Easy & Comfortable',
                          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.brown[800],
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Book Now',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              // Filter section
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Find your ideal room',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        FilterChip(
                          label: const Text('All'),
                          selected: selectedFilter == 'all',
                          onSelected: (_) {
                            setState(() => selectedFilter = 'all');
                          },
                        ),
                        FilterChip(
                          label: const Text('Standard'),
                          selected: selectedFilter == 'standard',
                          onSelected: (_) {
                            setState(() => selectedFilter = 'standard');
                          },
                        ),
                        FilterChip(
                          label: const Text('Deluxe'),
                          selected: selectedFilter == 'deluxe',
                          onSelected: (_) {
                            setState(() => selectedFilter = 'deluxe');
                          },
                        ),
                        FilterChip(
                          label: const Text('Suite'),
                          selected: selectedFilter == 'suite',
                          onSelected: (_) {
                            setState(() => selectedFilter = 'suite');
                          },
                        ),
                        FilterChip(
                          label: const Text('Family'),
                          selected: selectedFilter == 'family',
                          onSelected: (_) {
                            setState(() => selectedFilter = 'family');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Rooms section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Our Rooms',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 12),
                    ListView.builder(
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
      ),
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
                    Text(title,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text(price,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown[800])),
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
                      backgroundColor: Colors.brown[800],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'View Details',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

