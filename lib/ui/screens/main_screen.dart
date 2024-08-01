import 'package:cv_app/blocs/download_pdf_bloc.dart';
import 'package:cv_app/ui/screens/academic_backgr.dart';
import 'package:cv_app/ui/screens/contacts_screen.dart';
import 'package:cv_app/ui/screens/home_screen.dart';
import 'package:cv_app/ui/screens/languages_screen.dart';
import 'package:cv_app/ui/screens/relevant_experience.dart';
import 'package:cv_app/ui/screens/skills_screen.dart';
import 'package:cv_app/ui/screens/summary_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloadPdfBloc, DownloadPdfState>(
        builder: (context, state) {
      print(state);
      return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SvgPicture.asset("assets/images/menu.svg"),
              ),
            ),
          ),
          actions: [
            state is LoadingPdfState
                ? const CircularProgressIndicator()
                : GestureDetector(
                    onTap: () {
                      context.read<DownloadPdfBloc>().add(DownloadPdfEvent());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset("assets/images/pdf.svg"),
                    ),
                  ),
          ],
        ),
        body: PageView(
          controller: pageController,
          children: [
            const HomeScreen(),
            const SummaryScreen(),
            const AcademicBackgroundScreen(),
            const RelevantExperience(),
            SkillsScreen(),
            LanguagesScreen(),
            const ContactScreen(),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: const Color(0xFFE5FDFF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton.outlined(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back),
              ),
              SizedBox(
                width: 100,
                height: 40,
                child: FilledButton(
                  onPressed: () {},
                  child: const Text("Contact"),
                ),
              ),
              IconButton.filled(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      );
    });
  }
}
