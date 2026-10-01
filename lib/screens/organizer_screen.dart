import 'package:flutter/material.dart';

class OrganizerScreen extends StatelessWidget {
  const OrganizerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(leading: IconButton(icon: const Icon(Icons.arrow_back, color: Colors.black), onPressed: () {}), title: const Text('Organizer', style: TextStyle(color: Colors.black)), backgroundColor: Colors.white, elevation: 0, actions: [IconButton(icon: const Icon(Icons.more_vert, color: Colors.black), onPressed: () {})]),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(radius: 50, backgroundImage: AssetImage('assets/avatar.png')),
            const SizedBox(height: 16),
            const Text('Albert Flores', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [_buildStat('2.368', 'Followers'), _buildStat('346', 'Following'), _buildStat('13', 'Events')]),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(child: ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.person_add, size: 18), label: const Text('Follow'), style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF5B67F1), foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), padding: const EdgeInsets.symmetric(vertical: 12)))),
                const SizedBox(width: 12),
                Expanded(child: OutlinedButton.icon(onPressed: () {}, icon: const Icon(Icons.message, size: 18), label: const Text('Messages'), style: OutlinedButton.styleFrom(foregroundColor: const Color(0xFF5B67F1), side: const BorderSide(color: Color(0xFF5B67F1)), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), padding: const EdgeInsets.symmetric(vertical: 12)))),
              ],
            ),
            const SizedBox(height: 24),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [_buildTab('About', true), _buildTab('Events', false), _buildTab('Reviews', false)]),
            const SizedBox(height: 24),
            const Align(alignment: Alignment.centerLeft, child: Text('About', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            const SizedBox(height: 8),
            const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', style: TextStyle(color: Colors.grey, height: 1.5)),
            const SizedBox(height: 8),
            const Align(alignment: Alignment.centerLeft, child: Text('Read more...', style: TextStyle(color: Color(0xFF5B67F1), fontWeight: FontWeight.bold))),
          ],
        ),
      ),
    );
  }

  Widget _buildStat(String value, String label) => Column(children: [Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), const SizedBox(height: 4), Text(label, style: const TextStyle(color: Colors.grey, fontSize: 14))]);

  Widget _buildTab(String text, bool isActive) => Container(padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8), decoration: BoxDecoration(color: isActive ? const Color(0xFF5B67F1) : Colors.transparent, borderRadius: BorderRadius.circular(20), border: isActive ? null : Border.all(color: Colors.grey[300]!)), child: Text(text, style: TextStyle(color: isActive ? Colors.white : Colors.grey[600], fontWeight: isActive ? FontWeight.bold : FontWeight.normal)));
}