import 'package:flutter/material.dart';

class WorkoutSort extends StatelessWidget {
  final String workoutName;
  final Color background = const Color(0xFF1B1B1B);
  final Color defaultColor = const Color(0xFF9F51BA);
  final Color text = const Color(0xFFFDFDFD);

  const WorkoutSort({Key? key, required this.workoutName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        border: Border.all(color: defaultColor),
        color: background,
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: 350,
        height: 50,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              workoutName,
              style: TextStyle(color: text),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
