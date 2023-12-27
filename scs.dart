// social_component_screen.dart

import 'package:flutter/material.dart';

class SocialComponentScreen extends StatefulWidget {
  @override
  State<SocialComponentScreen> createState() => _SocialComponentScreenState();
}

class _SocialComponentScreenState extends State<SocialComponentScreen> {
  final List<FriendActivity> friendActivities = [
    FriendActivity('John Doe', 'Completed a 5K run!', '2 hours ago'),
    FriendActivity(
        'Alice Smith', 'Reached a new weightlifting PR!', '4 hours ago'),
    // Add more friend activities as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Component'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: friendActivities.length,
              itemBuilder: (context, index) {
                return FriendActivityCard(
                    friendActivity: friendActivities[index]);
              },
            ),
          ),
          CommentSection(),
        ],
      ),
    );
  }
}

class FriendActivity {
  final String userName;
  final String activity;
  final String timestamp;

  FriendActivity(this.userName, this.activity, this.timestamp);
}

class FriendActivityCard extends StatefulWidget {
  final FriendActivity friendActivity;

  FriendActivityCard({required this.friendActivity});

  @override
  State<FriendActivityCard> createState() => _FriendActivityCardState();
}

class _FriendActivityCardState extends State<FriendActivityCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(widget.friendActivity.userName[0]),
        ),
        title: Text(widget.friendActivity.userName),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.friendActivity.activity),
            SizedBox(height: 5),
            Text(widget.friendActivity.timestamp),
          ],
        ),
      ),
    );
  }
}

class CommentSection extends StatefulWidget {
  @override
  State<CommentSection> createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Add a comment...',
              suffixIcon: IconButton(
                icon: Icon(Icons.send),
                onPressed: () {
                  // Add comment functionality
                },
              ),
            ),
          ),
          SizedBox(height: 10),
          // Display comments here (you can use a ListView for this)
        ],
      ),
    );
  }
}
