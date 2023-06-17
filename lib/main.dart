import 'package:flutter/material.dart';
import 'package:s1135382_s1133373_iiatimd_app/personal_record_page.dart';
import 'home_page.dart';
import 'workout_page.dart';

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Workout app',
      theme: ThemeData(
        primarySwatch: createMaterialColor(const Color(0xFF1B1B1B)),
      ),
      home: const RootPage(title: 'My Workout'),
      routes: {
        // '/workouts': (context) => const WorkoutPage(),
        '/personalrecords': (context) => const PersonalRecord(),
        '/home': (context) => const HomePage()
      },
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;

  List<String> pageTitles = [
    "Overview",
    'Workouts',
    'Personal Records',
  ];

  List<Widget> pages = [
    const HomePage(),
    const WorkoutPage(),
    const PersonalRecord(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(pageTitles[currentPage]), centerTitle: true),
        body: pages[currentPage],
        bottomNavigationBar: Theme(
          data: ThemeData(
            canvasColor:
                createMaterialColor(const Color.fromARGB(255, 239, 239, 239)),
          ),
          child: BottomNavigationBar(
            currentIndex: currentPage,
            onTap: (index) {
              setState(() {
                currentPage = index;
              });
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('web/icons/home_icon.png'),
                  width: 48,
                  height: 48,
                  color: Colors.black87,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('web/icons/dumbbel.png'),
                  width: 48,
                  height: 48,
                  color: Colors.black87,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('web/icons/star_icon.png'),
                  width: 48,
                  height: 48,
                  color: Colors.black87,
                ),
                label: '',
              ),
            ],
          ),
        ));
  }
}
