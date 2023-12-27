import 'package:flutter/material.dart';
import 'wps.dart';

import 'pts.dart';
import 'scs.dart';

void main() => runApp(FitnessApp());

class FitnessApp extends StatefulWidget {
  @override
  State<FitnessApp> createState() => _FitnessAppState();
}

class _FitnessAppState extends State<FitnessApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to Fitness App!',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              navigateToScreen(context, WorkoutPlansScreen());
            },
            child: Text('Personalized Workout Plans'),
          ),
          ElevatedButton(
            onPressed: () {
              navigateToScreen(context, ProgressTrackingScreen());
            },
            child: Text('Progress Tracking'),
          ),
          ElevatedButton(
            onPressed: () {
              navigateToScreen(context, SocialComponentScreen());
            },
            child: Text('Social Component'),
          ),
        ],
      ),
    );
  }

  void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}

// class WorkoutPlansScreen extends StatefulWidget {
//   @override
//   State<WorkoutPlansScreen> createState() => _WorkoutPlansScreenState();
// }

// class _WorkoutPlansScreenState extends State<WorkoutPlansScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Workout Plans'),
//       ),
//       body: Center(
//         child: Text('Personalized Workout Plans will be displayed here.'),
//       ),
//     );
//   }
// }

// class ProgressTrackingScreen extends StatefulWidget {
//   @override
//   State<ProgressTrackingScreen> createState() => _ProgressTrackingScreenState();
// }

// class _ProgressTrackingScreenState extends State<ProgressTrackingScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Progress Tracking'),
//       ),
//       body: Center(
//         child: Text('Progress Tracking will be displayed here.'),
//       ),
//     );
//   }
// }

// class SocialComponentScreen extends StatefulWidget {
//   @override
//   State<SocialComponentScreen> createState() => _SocialComponentScreenState();
// }

// class _SocialComponentScreenState extends State<SocialComponentScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Social Component'),
//       ),
//       body: Center(
//         child: Text('Social Component will be displayed here.'),
//       ),
//     );
//   }
// }
