import 'package:flutter/material.dart';

import 'widgets/act_history.dart';
import 'widgets/name_widget.dart';
import 'widgets/popular_albums.dart';
import 'widgets/profile_picture.dart';



class Album{
  final String title;
  final String cover;
  const Album({required this.title, required this.cover});
}

void main() {
  runApp(const AboutPage(title:'關於柯佳嬿'));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About page',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const AboutPage(title: 'Alice Ko'),
    );
  }
}

class AboutPage extends StatelessWidget {
  final String title;

  const AboutPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const[
            ProfilePicture(),
            NameWidget(),
            ActHistory(),
            PopularAlbums(),
          ],
        ),
      ),
    );
  }
}

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // 圓形頭貼
      child: ClipOval(
        child: Image.asset(
          'assets/aliceko.png',
          width: 80.0,
          height: 80.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}