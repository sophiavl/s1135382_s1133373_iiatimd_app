import 'package:flutter/material.dart';
import 'package:s1135382_s1133373_iiatimd_app/components/workout_sort.dart';

class Legs extends StatefulWidget {
  const Legs({super.key});

  @override
  State<Legs> createState() => _LegsState();
}

class _LegsState extends State<Legs> {
  Color backgroundContainer = const Color(0xFF5D2E6D);
  Color defaultColor = const Color(0xFF9F51BA);
  Color background = const Color(0xFF1B1B1B);

  List<String> workouts = [
    'Squats',
    'Sumo Squats',
    'Hip Thrust',
    'Bulgarian Split Squat',
    'Dumbell Goblet Squat',
    'Leg Press',
    'Machine Leg Extension',
    'Step Up'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Legs'),
      ),
      backgroundColor: background,
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        ListView.builder(
          shrinkWrap: true,
          itemCount: workouts.length,
          itemBuilder: (BuildContext context, int index) {
            return WorkoutSort(workoutName: workouts[index]);
          },
        )
      ])),
    );
  }
}
