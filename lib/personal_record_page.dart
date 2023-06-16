import 'package:flutter/material.dart';

class PersonalRecord extends StatefulWidget {
  const PersonalRecord({super.key});

  @override
  State<PersonalRecord> createState() => _PersonalRecordState();
}

class _PersonalRecordState extends State<PersonalRecord> {
  Color background = const Color(0xFF1B1B1B);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background, // Set the background color for the whole screen
      child: const Center(
        child: Text('Personal Records', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
