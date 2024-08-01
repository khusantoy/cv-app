import 'package:cv_app/ui/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5FDFF),
      drawer: CustomDrawer(),
      
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 100,
              child: Image.asset("assets/images/cat.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Verónica Rivadulla Deschamps",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "UX/UI & Visual Designer",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Front-end developer",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Graphic Designer",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Visual communicator",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "+10 years experience",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.place), Text("Culleredo, Galiza, Spain")],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
