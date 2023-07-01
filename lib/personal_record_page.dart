import 'package:flutter/material.dart';
import 'package:s1135382_s1133373_iiatimd_app/components/pr_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PersonalRecordPage extends StatefulWidget {
  const PersonalRecordPage({Key? key}) : super(key: key);

  @override
  State<PersonalRecordPage> createState() => _PersonalRecordPageState();
}

class _PersonalRecordPageState extends State<PersonalRecordPage> {
  Color background = const Color(0xFF1B1B1B);
  Color defaultColor = const Color(0xFF9F51BA);

  List<PrModel> prDataList = [
    PrModel(workoutName: 'Bench Press', pr: 0),
    PrModel(workoutName: 'Romanian Deadlift', pr: 0),
    PrModel(workoutName: 'Hip Thrust', pr: 0),
    PrModel(workoutName: 'Lateral Raises', pr: 0),
    PrModel(workoutName: 'Deadlift', pr: 0),
    PrModel(workoutName: 'Incline Bench Press', pr: 0),
    PrModel(workoutName: 'Leg Press', pr: 0),
  ];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

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
                child: Column(
                  children: prDataList.map((data) {
                    return PrWidget(
                      prModel: data,
                      onPrChanged: (value) {
                        setState(() {
                          data.pr = value;
                        });
                      },
                    );
                  }).toList(),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(16),
                child: ElevatedButton(
                  onPressed: () {
                    _saveData();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: defaultColor,
                    foregroundColor: Colors.white,
                    elevation: 5,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Save'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      for (final data in prDataList) {
        final prValue = prefs.getInt(data.workoutName) ?? 0;
        data.pr = prValue;
      }
    });
  }

  Future<void> _saveData() async {
    final prefs = await SharedPreferences.getInstance();
    for (final data in prDataList) {
      await prefs.setInt(data.workoutName, data.pr);
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Data saved successfully!')),
    );
  }
}
