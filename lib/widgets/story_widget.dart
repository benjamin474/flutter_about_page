import 'package:flutter/material.dart';
import '../contents/story_text.dart';

class StoryWidget extends StatelessWidget{
  const StoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget> [
        const Text('演藝業歷史', style: TextStyle(color: Colors.grey, letterSpacing:  2.0)),
        const SizedBox(height: 10.0),
        Text(
          storyText,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 13.0,
            letterSpacing: 2.0,
          ),
        ),
      ],
    );
  }
}