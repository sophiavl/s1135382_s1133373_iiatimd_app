import 'package:flutter/material.dart';

class Legs extends StatefulWidget {
  const Legs({super.key});

  @override
  State<Legs> createState() => _LegsState();
}

class _LegsState extends State<Legs> {
  Color backgroundContainer = const Color(0xFF5D2E6D);
  Color defaultColor = const Color(0xFF9F51BA);
  Color background = const Color(0xFF1B1B1B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        body: const SingleChildScrollView(
          child: Text('Legs'),
        ));
  }
}
