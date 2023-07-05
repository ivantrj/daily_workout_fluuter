import 'package:daily_workout/pages/ExerciseSelectionPage.dart';
import 'package:daily_workout/pages/WelcomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:beamer/beamer.dart';

void main() {
  runApp(DailyWorkoutApp());
}

class DailyWorkoutApp extends StatelessWidget {
  final routerDelegate = BeamerDelegate(
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '/': (context, state, data) => WelcomeScreen(),
        '/exercise-selection': (context, state, data) =>
            ExerciseSelectionScreen(),
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      title: 'Daily Workout',
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
    );
  }
}
