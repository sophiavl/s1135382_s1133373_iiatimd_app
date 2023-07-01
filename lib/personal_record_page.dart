import 'package:flutter/material.dart';
import 'package:s1135382_s1133373_iiatimd_app/components/pr_model.dart';

class PersonalRecordPage extends StatefulWidget {
  const PersonalRecordPage({super.key});

  @override
  State<PersonalRecordPage> createState() => _PersonalRecordPageState();
}

class _PersonalRecordPageState extends State<PersonalRecordPage> {
  Color background = const Color(0xFF1B1B1B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Container(
          color: background,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Center(
                child: Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    runAlignment: WrapAlignment.center,
                    children: [
                      PrModel(workoutName: 'Bench Press', pr: 43.5),
                      PrModel(workoutName: 'Squats', pr: 75),
                      PrModel(workoutName: 'Romanian Deadlift', pr: 50),
                      PrModel(workoutName: 'Hip thrust', pr: 100),
                      PrModel(workoutName: 'Lateral Raises', pr: 14),
                      PrModel(workoutName: 'Deadlift', pr: 55),
                      PrModel(workoutName: 'Incline Bench Press', pr: 25),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
