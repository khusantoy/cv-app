import 'package:flutter/material.dart';

class LanguagesScreen extends StatelessWidget {
  final List<Language> languages = [
    Language('Galician', 'native speaker', '🇬🇦'),
    Language('Spanish', 'native speaker', '🇪🇸'),
    Language('English', 'Upper intermediate', '🇬🇧'),
    Language('Japanese', 'Intermediate', '🇯🇵'),
    Language('French', 'Basic', '🇫🇷'),
  ];

  LanguagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Languages',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  return LanguageWidget(language: languages[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Language {
  final String name;
  final String proficiency;
  final String flagEmoji;

  Language(this.name, this.proficiency, this.flagEmoji);
}

class LanguageWidget extends StatelessWidget {
  final Language language;

  LanguageWidget({required this.language});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            language.flagEmoji,
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                language.name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                language.proficiency,
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
