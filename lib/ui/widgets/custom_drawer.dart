import 'package:cv_app/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({super.key});
  List<Map<String, dynamic>> sections = [
    {
      'title': 'home',
      'route': const HomeScreen(),
    },
    {
      'title': 'summary',
      'route': const HomeScreen(),
    },
    {
      'title': 'academic background',
      'route': const HomeScreen(),
    },
    {
      'title': 'relevant experience',
      'route': const HomeScreen(),
    },
    {
      'title': 'tech skills',
      'route': const HomeScreen(),
    },
    {
      'title': 'languages',
      'route': const HomeScreen(),
    },
    {
      'title': 'portfolio',
      'route': const HomeScreen(),
    },
    {
      'title': 'download cv',
      'route': const HomeScreen(),
    },
    {
      'title': 'contact',
      'route': const HomeScreen(),
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: sections.length,
        itemBuilder: (context, index) {
          final section = sections[index];
          return ListTile(
            title: Text(section['title'].toString().toUpperCase()),
          );
        },
      ),
    );
  }
}
