import 'package:flutter/material.dart';
// import 'package:s1135382_s1133373_iiatimd_app/home_page.dart';
// import 'package:s1135382_s1133373_iiatimd_app/personal_record_page.dart';
// import 'package:s1135382_s1133373_iiatimd_app/workout_page.dart';

class NavBar extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabChanged;
  const NavBar(
      {super.key, required this.selectedIndex, required this.onTabChanged});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem>[
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
    ], currentIndex: widget.selectedIndex, onTap: widget.onTabChanged);
  }
}



// class NavBar extends StatefulWidget {
//   const NavBar({super.key});

//   @override
//   State<NavBar> createState() => _NavBarState();
// }

// class _NavBarState extends State<NavBar> {
//   int currentPage = 0;

//   List<String> pageTitles = [
//     "Overview",
//     'Workouts',
//     'Personal Records',
//   ];

//   List<Widget> pages = [
//     const HomePage(),
//     const WorkoutPage(),
//     const PersonalRecordPage(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       currentIndex: currentPage,
//       onTap: (index) {
//         setState(() {
//           currentPage = index;
//         });
//         if (index == 0) {
//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => const HomePage()));
//         } else if (index == 1) {
//           Navigator.push(context,
//               MaterialPageRoute(builder: (context) => const WorkoutPage()));
//         } else if (index == 1) {
//           Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => const PersonalRecordPage()));
//         }
//       },
      // items: const <BottomNavigationBarItem>[
      //   BottomNavigationBarItem(
      //     icon: Image(
      //       image: AssetImage('web/icons/home_icon.png'),
      //       width: 48,
      //       height: 48,
      //       color: Colors.black87,
      //     ),
      //     label: '',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Image(
      //       image: AssetImage('web/icons/dumbbel.png'),
      //       width: 48,
      //       height: 48,
      //       color: Colors.black87,
      //     ),
      //     label: '',
      //   ),
      //   BottomNavigationBarItem(
      //     icon: Image(
      //       image: AssetImage('web/icons/star_icon.png'),
      //       width: 48,
      //       height: 48,
      //       color: Colors.black87,
      //     ),
      //     label: '',
      //   ),
      // ],
//     );
//   }
// }
