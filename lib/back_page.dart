import 'package:flutter/material.dart';

class Back extends StatefulWidget {
  const Back({super.key});

  @override
  State<Back> createState() => _BackState();
}

class _BackState extends State<Back> {
  Color backgroundContainer = const Color(0xFF5D2E6D);
  Color defaultColor = const Color(0xFF9F51BA);
  Color background = const Color(0xFF1B1B1B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back'),
        centerTitle: true,
      ),
      backgroundColor: background,
      body: const SingleChildScrollView(
        child: Text('Back'),
      ),
    );
  }
}
