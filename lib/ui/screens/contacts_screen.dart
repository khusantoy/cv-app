import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello! I am based in Culleredo, Galiza (Spain) and there are plenty of ways to get in touch with me:',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.phone, color: Colors.blue.shade900),
                const SizedBox(width: 10),
                const Text(
                  '(+34) 667 725130',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.email, color: Colors.blue.shade900),
                const SizedBox(width: 10),
                const Text(
                  'v.rivadulla.deschamps@gmail.com',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Icon(Icons.language, color: Colors.blue.shade900),
                const SizedBox(width: 10),
                const Text(
                  'www.veronicard.eu',
                  style: TextStyle(
                      fontSize: 16, decoration: TextDecoration.underline),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Icon(Icons.language, color: Colors.blue.shade900),
                const SizedBox(width: 10),
                const Text(
                  'about.me',
                  style: TextStyle(
                      fontSize: 16, decoration: TextDecoration.underline),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png',
                    width: 50,
                  ),
                  iconSize: 40,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png',
                    width: 50,
                  ),
                  iconSize: 40,
                  onPressed: () {},
                ),
                IconButton(
                  icon: SvgPicture.network(
                    "https://upload.wikimedia.org/wikipedia/commons/6/6b/WhatsApp.svg",
                    width: 50,
                  ),
                  iconSize: 40,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
