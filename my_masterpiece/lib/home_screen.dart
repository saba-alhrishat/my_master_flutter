// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Room {
//   final int id;
//   final String title;
//   final String image;
//   final String description;
//   final String price;
//   final String wifi;
//   final String roomType;

//   Room({required this.id, required this.title, required this.image, required this.description, required this.price, required this.wifi, required this.roomType});

//   factory Room.fromJson(Map<String, dynamic> json) {
//     return Room(
//       id: json['id'],
//       title: json['room_title'] ?? "No Title",
//       image: json['image'],
//       description: json['description'] ?? "No Description",
//       price: json['price'],
//       wifi: json['wifi'],
//       roomType: json['room_type'],
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   late Future<List<Room>> rooms;

//   Future<List<Room>> fetchRooms() async {
//     final response = await http.get(Uri.parse('http://127.0.0.1:8000/api/rooms'));

//     if (response.statusCode == 200) {
//       List jsonResponse = json.decode(response.body);
//       return jsonResponse.map((room) => Room.fromJson(room)).toList();
//     } else {
//       throw Exception('Failed to load rooms');
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     rooms = fetchRooms();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Rooms')),
//       body: FutureBuilder<List<Room>>(
//         future: rooms,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(child: CircularProgressIndicator());
//           } else if (snapshot.hasError) {
//             return Center(child: Text('Error: ${snapshot.error}'));
//           } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//             return Center(child: Text('No rooms available'));
//           } else {
//             List<Room> rooms = snapshot.data!;

//             return ListView.builder(
//               itemCount: rooms.length,
//               itemBuilder: (context, index) {
//                 final room = rooms[index];

//                 return Card(
//                   margin: EdgeInsets.all(10),
//                   child: ListTile(
//                     leading: Image.network('http://127.0.0.1:8000${room.image}'),
//                     title: Text(room.title),
//                     subtitle: Text(room.description),
//                     trailing: Text('${room.price} USD'),
//                   ),
//                 );
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
// }
















import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Room {
  final int id;
  final String title;
  final String image;
  final String description;
  final String price;
  final String wifi;
  final String roomType;

  Room({
    required this.id,
    required this.title,
    required this.image,
    required this.description,
    required this.price,
    required this.wifi,
    required this.roomType,
  });

  factory Room.fromJson(Map<String, dynamic> json) {
    return Room(
      id: json['id'],
      title: json['room_title'] ?? "No Title",
      image: json['image'] ?? "", // إذا كانت الصورة مفقودة
      description: json['description'] ?? "No Description",
      price: json['price'],
      wifi: json['wifi'] ?? "No Wifi",
      roomType: json['room_type'] ?? "Unknown",
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Room>> rooms;

  Future<List<Room>> fetchRooms() async {
    try {
      final response = await http.get(Uri.parse('http://127.0.0.1:8000/api/rooms'));

      if (response.statusCode == 200) {
        List jsonResponse = json.decode(response.body);
        print('Response data: $jsonResponse'); // طباعة البيانات للتأكد من وصولها
        return jsonResponse.map((room) => Room.fromJson(room)).toList();
      } else {
        throw Exception('Failed to load rooms');
      }
    } catch (e) {
      print('Error: $e'); // طباعة الأخطاء في حالة حدوث مشكلة
      throw Exception('Failed to load rooms: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    rooms = fetchRooms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rooms'),
        backgroundColor: Colors.green, // تغيير اللون هنا
      ),
      body: FutureBuilder<List<Room>>(
        future: rooms,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No rooms available'));
          } else {
            List<Room> rooms = snapshot.data!;

            return ListView.builder(
              itemCount: rooms.length,
              itemBuilder: (context, index) {
                final room = rooms[index];

                return Card(
                  margin: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 5,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    leading: room.image.isNotEmpty
                        ? Image.network(
                            'http://127.0.0.1:8000${room.image}',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          )
                        : Icon(Icons.image, size: 50), // صورة افتراضية في حال عدم وجود صورة
                    title: Text(room.title, style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(room.description),
                        SizedBox(height: 5),
                        Text('Wi-Fi: ${room.wifi}', style: TextStyle(fontSize: 12)),
                        SizedBox(height: 5),
                        Text('Room Type: ${room.roomType}', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    trailing: Text('${room.price} USD', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
