import 'package:flutter/material.dart';

class RelaxScreen extends StatelessWidget {
  const RelaxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset('assets/relax_screen.png', fit: BoxFit.cover, width: double.infinity, height: 200),
              ),
              const SizedBox(height: 16),
              const Text('Peter Mach', style: TextStyle(color: Colors.grey, fontSize: 14)),
              const SizedBox(height: 4),
              const Text('Mind Deep Relax', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              const Text('Join the Community as we prepare over 33 days to relax and feel joy with the mind and happiness session across the World.', style: TextStyle(color: Colors.grey, height: 1.5)),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.play_arrow),
                  label: const Text('Play Next Session'),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), padding: const EdgeInsets.symmetric(vertical: 16)),
                ),
              ),
              const SizedBox(height: 24),
              _buildListTile(Icons.play_arrow, Colors.teal, 'Sweet Memories'),
              const Divider(),
              _buildListTile(Icons.play_arrow, Colors.teal, 'A Day Dream'),
              const Divider(),
              _buildListTile(Icons.play_arrow, Colors.orange, 'Mind Explore'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListTile(IconData icon, Color color, String title) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(backgroundColor: color, child: Icon(icon, color: Colors.white)),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
      subtitle: const Text('December 29 Pre-Launch', style: TextStyle(fontSize: 12)),
      trailing: const Icon(Icons.more_horiz, color: Colors.grey),
      onTap: () {},
    );
  }
}