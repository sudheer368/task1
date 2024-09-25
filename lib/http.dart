import 'package:flutter/material.dart';

class Profilepic extends StatefulWidget {
  const Profilepic({super.key});

  @override
  State<Profilepic> createState() => _ProfilepicState();
}

class _ProfilepicState extends State<Profilepic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo profile"),
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 100,
            backgroundColor: Colors.grey[200],
            child: ClipOval(
              child: Image.network(
                "https://lh3.googleusercontent.com/a/AAcHTte2xNkiJciavf50Fn5qA1518vFeWHYEnA-sR2pRZmi7nd0=s96-c",
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Image.asset(
                    'assets/default_profile_pic.png', // Fallback image from assets
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
