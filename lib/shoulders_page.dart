import 'package:flutter/material.dart';
import 'package:s1135382_s1133373_iiatimd_app/components/navbar.dart';

class Shoulders extends StatefulWidget {
  const Shoulders({super.key});

  @override
  State<Shoulders> createState() => _ShouldersState();
}

class _ShouldersState extends State<Shoulders> {
  Color backgroundContainer = const Color(0xFF5D2E6D);
  Color defaultColor = const Color(0xFF9F51BA);
  Color background = const Color(0xFF1B1B1B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: const SingleChildScrollView(
        child: Text('Shoulders'),
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
