import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert'; // لتحويل البيانات إلى JSON

class BookingPage extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String price;

  const BookingPage({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking Details'),
        backgroundColor: Color(0xFFDB6574),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                imageUrl,
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              price,
              style: TextStyle(fontSize: 20, color: Color(0xFFDB6574), fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: TextStyle(fontSize: 16, color: Colors.grey[800]),
            ),
            const SizedBox(height: 20),
            // هنا زر الحجز
            ElevatedButton(
              onPressed: () async {
                // تنفيذ عملية الحجز وارسال البيانات إلى Laravel
                final response = await http.post(
                  Uri.parse('https://your-laravel-api-url.com/api/book-room'), // رابط API في Laravel
                  headers: {'Content-Type': 'application/json'},
                  body: json.encode({
                    'room_title': title,
                    'room_description': description,
                    'room_price': price,
                    'image_url': imageUrl,
                  }),
                );

                if (response.statusCode == 200) {
                  // إذا تم الحجز بنجاح
                  print("Room booked successfully!");
                  // يمكنك الانتقال إلى صفحة أخرى أو إظهار رسالة
                } else {
                  // في حالة حدوث خطأ
                  print("Failed to book room.");
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFDB6574),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Book Now',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
