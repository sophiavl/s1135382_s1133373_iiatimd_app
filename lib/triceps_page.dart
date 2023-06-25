import 'package:flutter/material.dart';
import 'package:s1135382_s1133373_iiatimd_app/components/workout_sort.dart';

class Triceps extends StatefulWidget {
  const Triceps({super.key});

  @override
  State<Triceps> createState() => _TricepsState();
}

class _TricepsState extends State<Triceps> {
  Color backgroundContainer = const Color(0xFF5D2E6D);
  Color defaultColor = const Color(0xFF9F51BA);
  Color background = const Color(0xFF1B1B1B);

  List<String> workouts = [
    'Cable Push Down',
    'Barbell Close Grip Bench Press',
    'Dumbell Skullcrusher',
    'Barbell Skullcrusher',
    'Cable Overhead Tricep Extension',
    'Cable Skullcrusher',
    'Dips',
    'Diamond Push Ups'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Triceps'),
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
