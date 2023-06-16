import 'package:flutter/material.dart';

class PrModel extends StatelessWidget {
  final String workoutName;
  final double pr;
  final Color borderColor = const Color(0xFFBBBBBB);
  final Color defaultColor = const Color(0xFF9F51BA);

  const PrModel({Key? key, required this.workoutName, required this.pr})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  workoutName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                Container(
                  width: 60.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: defaultColor),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: borderColor,
            thickness: 1.0,
            height: 1.0,
          ),
        ],
      ),
    );
  }
}
