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
          const CircleAvatar(
            radius: 100, // Adjust the size if needed
            backgroundImage: NetworkImage("https://i.pinimg.com/originals/14/72/82/1472823b3b6ed569cd5050c6a127e919.jpg"),
          ),
        ],
      ),
    );
  }
}
