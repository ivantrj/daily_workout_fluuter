import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExerciseSelectionScreen extends StatefulWidget {
  @override
  _ExerciseSelectionScreenState createState() =>
      _ExerciseSelectionScreenState();
}

class _ExerciseSelectionScreenState extends State<ExerciseSelectionScreen> {
  final List<String> exercises = ['Pushups', 'Pullups', 'Squats'];
  final List<int> startingAmounts = List.generate(20, (index) => index + 1);
  final List<int> dailyIncrements = [1, 2, 3, 4, 5];

  String selectedExercise = "";
  int selectedStartingAmount = 1;
  int selectedDailyIncrement = 1;

  @override
  void initState() {
    selectedExercise = exercises[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Exercise Selection'),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CupertinoPicker(
                itemExtent: 40,
                onSelectedItemChanged: (index) {
                  setState(() {
                    selectedExercise = exercises[index];
                  });
                },
                children: exercises.map((exercise) {
                  return Text(
                    exercise,
                    style: const TextStyle(fontSize: 16),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              CupertinoPicker(
                itemExtent: 40,
                onSelectedItemChanged: (index) {
                  setState(() {
                    selectedStartingAmount = startingAmounts[index];
                  });
                },
                children: startingAmounts.map((amount) {
                  return Text(
                    amount.toString(),
                    style: const TextStyle(fontSize: 16),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              CupertinoPicker(
                itemExtent: 40,
                onSelectedItemChanged: (index) {
                  setState(() {
                    selectedDailyIncrement = dailyIncrements[index];
                  });
                },
                children: dailyIncrements.map((increment) {
                  return Text(
                    increment.toString(),
                    style: const TextStyle(fontSize: 16),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              CupertinoButton.filled(
                child: const Text('Next'),
                onPressed: () {
                  // TODO: Save the selected values and navigate to the next screen
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
