import 'package:flutter/material.dart';
import 'package:s1135382_s1133373_iiatimd_app/components/workout_sort.dart';

class Back extends StatefulWidget {
  const Back({super.key});

  @override
  State<Back> createState() => _BackState();
}

class _BackState extends State<Back> {
  Color backgroundContainer = const Color(0xFF5D2E6D);
  Color defaultColor = const Color(0xFF9F51BA);
  Color background = const Color(0xFF1B1B1B);

  List<String> workouts = [
    'Pull Ups',
    'Inverted Row',
    'Barbell Bent Over Row',
    'Cable Silverback Shrug',
    'Kettlebell Row',
    'Kettlebell Single Row',
    'Barbell Landmine Row',
    'Cable Pullover'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back'),
        centerTitle: true,
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
