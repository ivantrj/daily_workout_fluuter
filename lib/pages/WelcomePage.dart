import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Daily Workout!',
              style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
            ),
            const SizedBox(height: 20),
            CupertinoButton.filled(
              child: const Text('Get Started'),
              onPressed: () {
                Beamer.of(context).beamToNamed('/exercise-selection');
              },
            ),
          ],
        ),
      ),
    );
  }
}
