import 'package:flutter/material.dart';
import '../contents/story_text.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text(
          '出道史',
          style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
        ),
        const SizedBox(height: 10.0),
        Container(
          // color: Colors.blue[300],
          decoration: BoxDecoration(
            color: Colors.blue[300],
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Text(
            storyText,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Georgia',
              fontWeight: FontWeight.bold,
              fontSize: 13.0,
              letterSpacing: 2.0,
            ),
          ),
        ),
      ],
    );
  }
}
