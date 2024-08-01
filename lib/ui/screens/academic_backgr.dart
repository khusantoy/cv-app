import 'package:flutter/material.dart';

class AcademicBackgroundScreen extends StatelessWidget {
  const AcademicBackgroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Academic Background",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            AcademicItem(
              level: 'GRADUATE',
              title: 'JOURNALISM',
              institution: 'Universidad Pontificia de Salamanca',
              year: '2007',
            ),
            AcademicItem(
              level: 'MASTER',
              title: 'GALICIAN LANG.',
              institution: 'Universidade da Coruña',
              year: '2009',
            ),
            AcademicItem(
              level: 'SUPERIOR TECHNICIAN',
              title: 'WEB APP DEVELOPMENT',
              institution: 'IES Fernando Wirtz (A Coruña)',
              year: '2016',
            ),
            AcademicItem(
              level: 'SPECIALIZATION',
              title: 'UX/UI DESIGN',
              institution: 'La Zona - FUE (Fundación Universidad Empresa)',
              year: '2022',
            ),
          ],
        ),
      ),
    );
  }
}

class AcademicItem extends StatelessWidget {
  final String level;
  final String title;
  final String institution;
  final String year;

  const AcademicItem({
    super.key,
    required this.level,
    required this.title,
    required this.institution,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.bookmark, color: Colors.pinkAccent, size: 30.0),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  level,
                  style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  institution,
                  style: const TextStyle(fontSize: 16.0, color: Colors.black),
                ),
                Text(
                  'Year: $year',
                  style: TextStyle(fontSize: 14.0, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
