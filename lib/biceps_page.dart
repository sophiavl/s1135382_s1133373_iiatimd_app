import 'package:flutter/material.dart';

class Biceps extends StatefulWidget {
  const Biceps({super.key});

  @override
  State<Biceps> createState() => _BicepsState();
}

class _BicepsState extends State<Biceps> {
  Color backgroundContainer = const Color(0xFF5D2E6D);
  Color defaultColor = const Color(0xFF9F51BA);
  Color background = const Color(0xFF1B1B1B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biceps'),
        centerTitle: true,
      ),
      backgroundColor: background,
      body: const SingleChildScrollView(
        child: Text('Biceps'),
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
