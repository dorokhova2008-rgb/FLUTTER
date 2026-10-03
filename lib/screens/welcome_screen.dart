import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF009688),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2),
            const Text('medinow', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(height: 8),
            const Text('Meditate With Us!', style: TextStyle(fontSize: 18, color: Colors.white70)),
            const Spacer(flex: 3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.black, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), padding: const EdgeInsets.symmetric(vertical: 16)),
                      child: const Text('Sign in with Apple'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan[100], foregroundColor: Colors.black, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)), padding: const EdgeInsets.symmetric(vertical: 16)),
                      child: const Text('Continue with Email or Phone'),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextButton(onPressed: () {}, child: const Text('Continue With Google', style: TextStyle(color: Colors.white))),
                ],
              ),
            ),
            const Spacer(flex: 2),
            Expanded(
              flex: 4,
              child: Image.asset('assets/meditation_illustration.png', fit: BoxFit.contain),
            ),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}