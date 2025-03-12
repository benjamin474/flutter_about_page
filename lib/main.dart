import 'package:flutter/material.dart';

void main() {
  runApp(const AboutPage());
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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const AboutPage(title: 'Alice Ko'),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: Text()));
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

class NameWidget extends StatelessWidget {
  const NameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('姓名', style: TextStyle(color: Colors.grey, letterSpacing: 2.0)),
        SizedBox(height: 10.0),
        Text(
          '柯佳嬿',
          style: TextStyle(
            color: Colors.yellow[200],
            fontWeight: FontWeight.bold,
            fontSize: 28.0,
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 30.0),
      ],
    );
  }
}

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    
  }
}
