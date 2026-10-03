import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leading: IconButton(icon: const Icon(Icons.arrow_back_ios, color: Colors.black), onPressed: () {}), title: const Text('3D Design Basic', style: TextStyle(color: Colors.black)), backgroundColor: Colors.white, elevation: 0),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(borderRadius: BorderRadius.circular(16), child: Image.asset('assets/course_3d.png', fit: BoxFit.cover, height: 200, width: double.infinity)),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      _buildTag(Icons.people, '4,569'),
                      const SizedBox(width: 8),
                      _buildTag(Icons.star, '4.9'),
                      const SizedBox(width: 8),
                      Container(padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6), decoration: BoxDecoration(color: Colors.blue[100], borderRadius: BorderRadius.circular(20)), child: const Text('Best Seller', style: TextStyle(color: Colors.blue, fontSize: 12))),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text('3D Design Basic', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  const Text('In this course you will learn how to build a space to a 3-dimensional product. There are 24 premium learning videos for you.', style: TextStyle(color: Colors.grey, height: 1.5)),
                  const SizedBox(height: 24),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: const [Text('24 Lessons (20 hours)', style: TextStyle(fontWeight: FontWeight.bold)), Text('See all', style: TextStyle(color: Colors.blue))]),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey[300]!), borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Container(width: 60, height: 60, decoration: BoxDecoration(color: Colors.purple[100], borderRadius: BorderRadius.circular(8)), child: const Icon(Icons.play_arrow, color: Colors.purple)),
                        const SizedBox(width: 12),
                        const Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Introduction to 3D', style: TextStyle(fontWeight: FontWeight.bold)), SizedBox(height: 4), Text('20 mins', style: TextStyle(color: Colors.grey, fontSize: 12))])),
                        const Icon(Icons.check_circle, color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF5B67F1), foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 16), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))), child: const Text('Enroll - \$24.99', style: TextStyle(fontSize: 16)))),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTag(IconData icon, String text) {
    return Container(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4), decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(8)), child: Row(children: [Icon(icon, size: 14, color: Colors.grey[600]), const SizedBox(width: 4), Text(text, style: TextStyle(color: Colors.grey[600], fontSize: 12))]));
  }
}