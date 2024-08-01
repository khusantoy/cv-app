import 'package:flutter/material.dart';
import 'package:cupertino_stepper/cupertino_stepper.dart';

class RelevantExperience extends StatefulWidget {
  const RelevantExperience({super.key});

  @override
  _RelevantExperienceState createState() => _RelevantExperienceState();
}

class _RelevantExperienceState extends State<RelevantExperience> {
  int _currentStep = 0;

  final List<Experience> experiences = [
    Experience(
      year: '2022 - (CURRENT)',
      role: 'GRAPHIC DESIGN',
      company: 'La Voz de Galicia',
      description: 'Design, layout, illustration',
    ),
    Experience(
      year: '2021 - 2022',
      role: 'LAYOUT & GRAPHIC DESIGN',
      company: 'NG Diario / Sermos Galiza',
      description: 'Newspaper layout, graphic design',
    ),
    Experience(
      year: '2021',
      role: 'GRAPHIC, LAYOUT, WEB AND SOCIAL MEDIA DESIGN',
      company: 'Ooferta Comunicación',
      description: 'Branding, web design, social media',
    ),
    Experience(
      year: '2020 - 2020',
      role: 'FRONT END DEV. UI DESIGN',
      company: 'Sulfata',
      description: 'Front end development with Angular',
    ),
    Experience(
      year: '2016 - 2020',
      role: 'GRAPHIC DESIGN',
      company: 'La Voz de Galicia',
      description: 'Graphic design, illustration',
    ),
    Experience(
      year: '2015',
      role: 'CONTENT MANAGER',
      company: 'Vector ITC',
      description: 'Content management and creation',
    ),
    Experience(
      year: '2012',
      role: 'GRAPHIC DESIGN',
      company: 'Freelance',
      description: 'Graphic design services',
    ),
    Experience(
      year: '2011',
      role: 'PRESS OFFICE',
      company: 'Consellería de Facenda, Xunta de Galicia',
      description: 'Press office support',
    ),
    Experience(
      year: '2010 - 2011',
      role: 'GRAPHIC DESIGN',
      company: 'Xornal de Galicia',
      description: 'Newspaper design and graphics',
    ),
    Experience(
      year: '2010',
      role: 'LAYOUT DESIGN',
      company: 'La Voz de Galicia',
      description: 'Layout design for newspaper',
    ),
    Experience(
      year: '2008 - 2010',
      role: 'PRESS OFFICE',
      company: 'Universidade da Coruña',
      description: 'Press office support',
    ),
    Experience(
      year: '2009',
      role: 'GRAPHIC DESIGN',
      company: 'NNN Comunicación',
      description: 'Graphic design and communication',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Relevant Experience',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: SafeArea(
        child: CupertinoStepper(
          steps: experiences.map((experience) {
            return Step(
              title: Text(
                experience.year,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    experience.role,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    experience.company,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  Text(
                    experience.description,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              isActive: true,
            );
          }).toList(),
          type: StepperType.vertical,
          currentStep: _currentStep,
          onStepTapped: (step) {
            setState(() {
              _currentStep = step;
            });
          },
        ),
      ),
    );
  }
}

class Experience {
  final String year;
  final String role;
  final String company;
  final String description;

  Experience({
    required this.year,
    required this.role,
    required this.company,
    required this.description,
  });
}
