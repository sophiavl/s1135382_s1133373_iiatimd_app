import 'package:flutter/material.dart';

class PrModel {
  PrModel({
    required this.workoutName,
    required this.pr,
  });

  String workoutName;
  int pr;
}

class PrWidget extends StatelessWidget {
  const PrWidget({
    Key? key,
    required this.prModel,
    required this.onPrChanged,
  }) : super(key: key);

  final PrModel prModel;
  final Color defaultColor = const Color(0xFF9F51BA);
  final ValueChanged<int> onPrChanged;

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController =
        TextEditingController(text: prModel.pr.toString());

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
                  prModel.workoutName,
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
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.number,
                      controller: textController,
                      onChanged: (value) {
                        final reversedValue = value.split('').reversed.join();
                        final prValue = int.tryParse(reversedValue) ?? 0;
                        onPrChanged(prValue);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: defaultColor,
            thickness: 1.0,
            height: 1.0,
          ),
        ],
      ),
    );
  }
}
