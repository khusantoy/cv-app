import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Summary",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              SummaryItem(
                icon: Icons.devices,
                title: 'Polivalent',
                description:
                    'Plenty of skills around communication, media, web and advertising.',
              ),
              SummaryItem(
                icon: Icons.work,
                title: 'Experience',
                description:
                    'More than 10 years working in design fields, with Adobe Creative Suite, Figma and collaborative tools.',
              ),
              SummaryItem(
                icon: Icons.open_in_new,
                title: 'Open-minded',
                description:
                    'Always looking for continuous improvement and ready to learn about the newest.',
              ),
              SummaryItem(
                icon: Icons.emoji_emotions,
                title: 'Empathic & humble',
                description: 'The user is in the center.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SummaryItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const SummaryItem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Icon(icon, size: 40.0),
          const SizedBox(width: 16.0),
          Text(
            title,
            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          Text(
            textAlign: TextAlign.center,
            description,
            style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
