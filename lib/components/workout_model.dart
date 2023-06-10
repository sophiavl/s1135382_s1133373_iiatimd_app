import 'package:flutter/material.dart';

class WorkoutModel extends StatelessWidget {
  final String containerName;
  final bool isSelected;
  final ValueChanged<bool?> onSelectionChanged;

  const WorkoutModel({
    super.key,
    required this.containerName,
    required this.isSelected,
    required this.onSelectionChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(containerName),
      leading: Checkbox(
        value: isSelected,
        onChanged: onSelectionChanged,
      ),
    );
  }
}
