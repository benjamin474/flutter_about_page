import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget{
  const NameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text('姓名', style: TextStyle(color: Colors.blueGrey, letterSpacing: 2.0)),
        const SizedBox(height: 10.0),
        Text(
          '柯佳嬿',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            letterSpacing: 2.0,
          ),
        ),
        const SizedBox(height: 30.0),
        const Text('Instagram', style: TextStyle(color: Colors.blueGrey,letterSpacing: 2.0)),
        const SizedBox(height: 10.0),
        Text(
          '@alicekochiayen',
          
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            letterSpacing: 2.0,
          ),
        ),
      ],
    );
  }
}