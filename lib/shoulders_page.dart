import 'package:flutter/material.dart';
import 'package:s1135382_s1133373_iiatimd_app/components/workout_sort.dart';

class Shoulders extends StatefulWidget {
  const Shoulders({Key? key}) : super(key: key);

  @override
  State<Shoulders> createState() => _ShouldersState();
}

class _ShouldersState extends State<Shoulders> {
  Color backgroundContainer = const Color(0xFF5D2E6D);
  Color defaultColor = const Color(0xFF9F51BA);
  Color background = const Color(0xFF1B1B1B);

  List<String> workouts = [
    'Cable Overhead Press',
    'Barbell Overhead Press',
    'Barbell Front Raise',
    'Barbell Upright Row',
    'Barbell Z Press',
    'Cable Rear Delt Fly',
    'Cable Upright Row'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoulders'),
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
