import 'package:flutter/material.dart';
import 'workout_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color background = const Color(0xFF1B1B1B);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: background, // Set the background color for the whole screen
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Welcome, User',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.2,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: const Text('Hello'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const WorkoutPage();
                  }),
                );
              },
              child: const Text('Go to Workouts'),
            ),
          ],
        ),
      ),
    );
  }
}
