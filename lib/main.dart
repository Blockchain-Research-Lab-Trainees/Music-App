import 'package:flutter/material.dart';
import 'package:music_app/screens/welcome.dart';

void main() {
  runApp(const MusicApp());
}


class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music App',
      theme: ThemeData(
       // backgroundColor: colo,
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen()
    );
  }
}
