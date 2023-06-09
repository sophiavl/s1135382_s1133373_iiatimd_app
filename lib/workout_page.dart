import 'package:flutter/material.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({Key? key}) : super(key: key);

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  Color backgroundContainer = const Color(0xFF5D2E6D);
  Color defaultColor = const Color(0xFF9F51BA);
  Color background = const Color(0xFF1B1B1B);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background, // Set the background color here
      child: Center(
        child: Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          runAlignment: WrapAlignment.center,
          children: <Widget>[
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: backgroundContainer,
                border: Border.all(
                  color: defaultColor,
                  width: 2,
                  style: BorderStyle.solid,
                ),
              ),
              child: const Center(
                child: Text(
                  'Push day',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: backgroundContainer,
                border: Border.all(
                  color: defaultColor,
                  width: 2,
                  style: BorderStyle.solid,
                ),
              ),
              child: const Center(
                child: Text(
                  'Push day',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: backgroundContainer,
                border: Border.all(
                  color: defaultColor,
                  width: 2,
                  style: BorderStyle.solid,
                ),
              ),
              child: const Center(
                child: Text(
                  'Push day',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
