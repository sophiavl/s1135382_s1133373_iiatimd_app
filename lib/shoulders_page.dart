import 'package:flutter/material.dart';
import 'package:s1135382_s1133373_iiatimd_app/components/navbar.dart';

class Shoulders extends StatefulWidget {
  const Shoulders({Key? key}) : super(key: key);

  @override
  State<Shoulders> createState() => _ShouldersState();
}

class _ShouldersState extends State<Shoulders> {
  Color backgroundContainer = const Color(0xFF5D2E6D);
  Color defaultColor = const Color(0xFF9F51BA);
  Color background = const Color(0xFF1B1B1B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shoulders'),
        centerTitle: true,
      ),
      backgroundColor: background,
      body: const SingleChildScrollView(
        child: Text('Shoulders'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Set the selected index for the current page
        onTap: (index) {
          // Handle navigation here
          if (index == 0) {
            Navigator.pushNamed(context, '/home');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/personalrecords');
          }
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
    );
  }
}
