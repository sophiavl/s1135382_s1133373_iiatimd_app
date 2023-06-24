import 'package:flutter/material.dart';
import 'package:s1135382_s1133373_iiatimd_app/components/navbar.dart';

class Abs extends StatefulWidget {
  const Abs({super.key});

  @override
  State<Abs> createState() => _AbsState();
}

class _AbsState extends State<Abs> {
  Color backgroundContainer = const Color(0xFF5D2E6D);
  Color defaultColor = const Color(0xFF9F51BA);
  Color background = const Color(0xFF1B1B1B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Abs'),
        centerTitle: true,
      ),
      backgroundColor: background,
      body: const SingleChildScrollView(
        child: Text('Abs'),
      ),
    );
  }
}
