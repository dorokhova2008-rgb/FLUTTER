import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/relax_screen.dart';
import 'screens/course_screen.dart';
import 'screens/organizer_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Практическая работа',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainSwitcher(),
    );
  }
}

class MainSwitcher extends StatefulWidget {
  const MainSwitcher({super.key});

  @override
  State<MainSwitcher> createState() => _MainSwitcherState();
}

class _MainSwitcherState extends State<MainSwitcher> {
  int _currentIndex = 0;


  final List<Widget> _screens = const [
    WelcomeScreen(),   
    RelaxScreen(),
    CourseScreen(),
    OrganizerScreen(), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Welcome'),
          BottomNavigationBarItem(icon: Icon(Icons.self_improvement), label: 'Relax'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Course'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}