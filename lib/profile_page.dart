import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Color background = const Color(0xFF1B1B1B);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background, // Set the background color for the whole screen
      child: const Center(
        child: Text('Profile Page'),
      ),
    );
  }
}
