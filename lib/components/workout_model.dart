import 'package:flutter/material.dart';

class WorkoutModel extends StatelessWidget {
  final double size;
  final String containerName;
  final Color backgroundContainer = const Color(0xFF5D2E6D);
  final Color defaultColor = const Color(0xFF9F51BA);
  final Color background = const Color(0xFF1B1B1B);

  const WorkoutModel({
    Key? key,
    required this.size,
    required this.containerName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Handle button press event here
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
