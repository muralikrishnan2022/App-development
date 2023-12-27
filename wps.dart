// workout_plans_screen.dart

import 'package:flutter/material.dart';

class WorkoutPlansScreen extends StatefulWidget {
  @override
  State<WorkoutPlansScreen> createState() => _WorkoutPlansScreenState();
}

class _WorkoutPlansScreenState extends State<WorkoutPlansScreen> {
  final List<Map<String, dynamic>> workoutPlans = [
    {
      'title': 'Beginner Full Body Workout',
      'description': 'A beginner-friendly full-body workout routine.',
      'duration': '30 mins',
    },
    {
      'title': 'High-Intensity Interval Training (HIIT)',
      'description': 'Burn fat with this intense interval training.',
      'duration': '20 mins',
    },
    // Add more workout plans as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Workout Plans'),
      ),
      body: ListView.builder(
        itemCount: workoutPlans.length,
        itemBuilder: (context, index) {
          return WorkoutPlanCard(
            title: workoutPlans[index]['title'],
            description: workoutPlans[index]['description'],
            duration: workoutPlans[index]['duration'],
          );
        },
      ),
    );
  }
}

class WorkoutPlanCard extends StatelessWidget {
  final String title;
  final String description;
  final String duration;

  WorkoutPlanCard({
    required this.title,
    required this.description,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(description),
            SizedBox(height: 5),
            Text('Duration: $duration'),
          ],
        ),
        onTap: () {
          // Add navigation to detailed workout plan screen
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailedWorkoutScreen(title: title)),
          );
        },
      ),
    );
  }
}

class DetailedWorkoutScreen extends StatelessWidget {
  final String title;

  DetailedWorkoutScreen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detailed Workout Plan'),
      ),
      body: Center(
        child: Text('Details for $title will be displayed here.'),
      ),
    );
  }
}
