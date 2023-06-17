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
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundContainer,
        border: Border.all(
          color: defaultColor,
          width: 2,
          style: BorderStyle.solid,
        ),
      ),
      child: Center(
        child: Text(
          containerName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
