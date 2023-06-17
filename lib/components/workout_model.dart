import 'package:flutter/material.dart';
import 'package:s1135382_s1133373_iiatimd_app/abs_page.dart';
import 'package:s1135382_s1133373_iiatimd_app/back_page.dart';
import 'package:s1135382_s1133373_iiatimd_app/biceps_page.dart';
import 'package:s1135382_s1133373_iiatimd_app/cardio_page.dart';
import 'package:s1135382_s1133373_iiatimd_app/legs_page.dart';
import 'package:s1135382_s1133373_iiatimd_app/shoulders_page.dart';
import 'package:s1135382_s1133373_iiatimd_app/triceps_page.dart';

class WorkoutModel extends StatelessWidget {
  final double size;
  final String containerName;
  final String pageName;
  final Color backgroundContainer = const Color(0xFF5D2E6D);
  final Color defaultColor = const Color(0xFF9F51BA);
  final Color background = const Color(0xFF1B1B1B);

  const WorkoutModel(
      {Key? key,
      required this.size,
      required this.containerName,
      required this.pageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (pageName == 'Shoulders') {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Shoulders()));
        } else if (pageName == 'Triceps') {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Triceps()));
        } else if (pageName == 'Abs') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Abs()));
        } else if (pageName == 'Legs') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Legs()));
        } else if (pageName == 'Biceps') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Biceps()));
        } else if (pageName == 'Back') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Back()));
        } else if (pageName == 'Cardio') {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Cardio()));
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundContainer,
        foregroundColor: Colors.white,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: defaultColor,
            width: 2,
            style: BorderStyle.solid,
          ),
        ),
      ),
      child: Container(
        width: size,
        height: size,
        alignment: Alignment.center,
        child: Text(
          containerName,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
