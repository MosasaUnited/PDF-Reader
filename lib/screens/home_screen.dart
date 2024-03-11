import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'PDF Reader',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ), // you can replace it with a logo
        ),
      ),
    );
  }
}
