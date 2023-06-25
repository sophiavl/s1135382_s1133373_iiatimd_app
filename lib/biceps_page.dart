import 'package:flutter/material.dart';
import 'package:s1135382_s1133373_iiatimd_app/components/workout_sort.dart';

class Biceps extends StatefulWidget {
  const Biceps({super.key});

  @override
  State<Biceps> createState() => _BicepsState();
}

class _BicepsState extends State<Biceps> {
  Color backgroundContainer = const Color(0xFF5D2E6D);
  Color defaultColor = const Color(0xFF9F51BA);
  Color background = const Color(0xFF1B1B1B);

  List<String> workouts = [
    'Chin Ups',
    'Barbell Curl',
    'Dumbell Curl',
    'Dumbell Hammer Curl',
    'Dumbell Incline Hammer Curl',
    'Dumbell Incline Zottman Curl',
    'Cable Bayesian Curl',
    'Cable Hammer Curl'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biceps'),
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
