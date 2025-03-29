import 'package:flutter/material.dart';

import 'widgets/name_widget.dart';
import 'widgets/popular_series.dart';
import 'widgets/profile_picture.dart';
import 'widgets/story_widget.dart';

class Series {
  final String title;
  final String cover;
  const Series({required this.title, required this.cover});
}

void main() {
  runApp(const MyApp());
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
      appBar: AppBar(title: Text(title)),

      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('../assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),

        child: SingleChildScrollView(
          child: Column(
            children: const [
              Stack(
                children: [
                  ProfilePicture(),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.yellow,
                      size: 24.0,
                    ),
                  ),
                ],
              ),

             
              NameWidget(),
              PopularSeries(),
              StoryWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
