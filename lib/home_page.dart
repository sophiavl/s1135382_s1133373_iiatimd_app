import 'package:flutter/material.dart';
import 'workout_page.dart';
import 'package:intl/intl.dart';
import 'package:s1135382_s1133373_iiatimd_app/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color background = const Color(0xFF1B1B1B);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('EEEE').format(now);
    return Container(
      color: background,
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
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.1,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('web/images/gym.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.1,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFF9F51BA).withOpacity(0.7),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    formattedDate == 'Monday'
                        ? "It's $formattedDate, time to push!"
                        : formattedDate == 'Tuesday'
                            ? "It's $formattedDate, time to pull!"
                            : formattedDate == 'Wednesday'
                                ? "It's $formattedDate, time to train legs!"
                                : formattedDate == 'Thursday'
                                    ? "It's $formattedDate, time to push AND pull!"
                                    : formattedDate == 'Friday'
                                        ? "It's $formattedDate, time to train arms!"
                                        : formattedDate == 'Saturday'
                                            ? "It's $formattedDate, time to do legs again!"
                                            : "It's $formattedDate, take a rest today",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.4,
              height: MediaQuery.of(context).size.height * 0.08,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor:
                    MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed)) {
                    return const Color(0xFF9F51BA);
                  }
                  return const Color.fromARGB(255, 32, 32, 32);
                })),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WorkoutPage(),
                    ),
                  );
                },
                child: const Text('Go to workouts'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
