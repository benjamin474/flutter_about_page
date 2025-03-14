import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        'assets/aliceko.png',
        width: 80.0,
        height: 80.0,
        fit: BoxFit.cover,
      ),
    );
  }
}