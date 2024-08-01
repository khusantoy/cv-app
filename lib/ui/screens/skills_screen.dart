import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SkillsScreen extends StatelessWidget {
  final List<Skill> skills = [
    Skill('Adobe Photoshop', 'assets/images/photoshop.svg'),
    Skill('Adobe Illustrator', 'assets/images/illustrator.svg'),
    Skill('Adobe InDesign', 'assets/images/indesign.svg'),
    Skill('Adobe After Effects', 'assets/images/after_effects.svg'),
    Skill('Figma', 'assets/images/figma.svg'),
    Skill('HTML5', 'assets/images/html5.svg'),
    Skill('CSS3', 'assets/images/css3.svg'),
    Skill('JavaScript', 'assets/images/javascript.svg'),
    Skill('VS Code', 'assets/images/vscode.svg'),
  ];

  SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Skills: Tech',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: skills.length,
                itemBuilder: (context, index) {
                  return SkillWidget(skill: skills[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Skill {
  final String name;
  final String iconPath;

  Skill(this.name, this.iconPath);
}

class SkillWidget extends StatelessWidget {
  final Skill skill;

  SkillWidget({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          SvgPicture.asset(
            skill.iconPath,
            width: 40,
            height: 40,
          ),
          SizedBox(width: 16),
          Text(
            skill.name,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
