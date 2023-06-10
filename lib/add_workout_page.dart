// import 'package:flutter/material.dart';
// import 'workout_page.dart';
// import 'components/workout_model.dart';

// class AddWorkoutPage extends StatefulWidget {
//   const AddWorkoutPage({Key? key}) : super(key: key);

//   @override
//   State<AddWorkoutPage> createState() => _AddWorkoutPageState();
// }

// class _AddWorkoutPageState extends State<AddWorkoutPage> {
//   Color backgroundContainer = const Color(0xFF5D2E6D);
//   Color defaultColor = const Color(0xFF9F51BA);
//   Color background = const Color(0xFF1B1B1B);

//   String workoutName = '';
//   List<String> selectedContainers = [];

//   List<String> availableContainers = [
//     'Container 1',
//     'Container 2',
//     'Container 3',
//     'Container 4'
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: background,
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           TextField(
//             onChanged: (value) {
//               setState(() {
//                 workoutName = value;
//               });
//             },
//             decoration: const InputDecoration(
//                 labelText: 'Enter workout name',
//                 border: OutlineInputBorder(),
//                 filled: true,
//                 fillColor: Colors.grey),
//           ),
//           const SizedBox(height: 20),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               for (String container in availableContainers)
//                 ContainerComponent(
//                   containerName: container,
//                   isSelected: selectedContainers.contains(container),
//                   onSelectionChanged: (value) {
//                     setState(() {
//                       if (value != null && value) {
//                         selectedContainers.add(container);
//                       } else {
//                         selectedContainers.remove(container);
//                       }
//                     });
//                   },
//                 )
//             ],
//           ),
//           const SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {
//               // Maak een Workout-object aan en sla het op
//               WorkoutModel workout = WorkoutModel(
//                 name: workoutName,
//                 selectedContainers: selectedContainers,
//               );
//               // Voer hier de code uit om de workout op te slaan
//               // Bijvoorbeeld: workout.save()
//             },
//             child: const Text('Save Workout'),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'components/workout_model.dart';

class AddWorkoutPage extends StatefulWidget {
  const AddWorkoutPage({Key? key}) : super(key: key);

  @override
  State<AddWorkoutPage> createState() => _AddWorkoutPageState();
}

class _AddWorkoutPageState extends State<AddWorkoutPage> {
  Color backgroundContainer = const Color(0xFF5D2E6D);
  Color defaultColor = const Color(0xFF9F51BA);
  Color background = const Color(0xFF1B1B1B);

  String workoutName = '';
  List<String> selectedContainers = [];

  List<String> availableContainers = [
    'Container 1',
    'Container 2',
    'Container 3',
    'Container 4'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextField(
            onChanged: (value) {
              setState(() {
                workoutName = value;
              });
            },
            decoration: const InputDecoration(
                labelText: 'Enter workout name',
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.grey),
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              for (String container in availableContainers)
                WorkoutModel(
                  containerName: container,
                  isSelected: selectedContainers.contains(container),
                  onSelectionChanged: (value) {
                    setState(() {
                      if (value != null && value) {
                        selectedContainers.add(container);
                      } else {
                        selectedContainers.remove(container);
                      }
                    });
                  },
                )
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Perform code to save the workout here
              // For example:
              WorkoutModel workout = WorkoutModel(
                containerName: workoutName,
                isSelected: true,
                onSelectionChanged: (value) {},
              );
              // Save the workout using workout.containerName and workout.isSelected
            },
            child: const Text('Save Workout'),
          )
        ],
      ),
    );
  }
}
