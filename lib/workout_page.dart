import 'package:flutter/material.dart';
import 'package:s1135382_s1133373_iiatimd_app/components/workout_model.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({Key? key}) : super(key: key);

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  Color backgroundContainer = const Color(0xFF5D2E6D);
  Color defaultColor = const Color(0xFF9F51BA);
  Color background = const Color(0xFF1B1B1B);

  List<String> workouts = [
    'Shoulders',
    'Triceps',
    'Legs',
    'Biceps',
    'Back',
    'Abs',
    'Cardio'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Container(
          color: background,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              Center(
                child: Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  runAlignment: WrapAlignment.center,
                  children: workouts.map((workout) {
                    return WorkoutModel(
                      size: 120,
                      containerName: workout,
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
