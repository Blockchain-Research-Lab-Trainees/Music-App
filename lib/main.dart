import 'package:flutter/material.dart';
import 'package:music_app/screens/welcome.dart';

void main() {
  runApp(const MusicApp());
}

// key lelo bhai :- 6a506bf363msh70b280c80245a2ap15b295jsn61aff7c2dc6e
// URL :- https://spotify23.p.rapidapi.com/search/?
// queries apne according lele bhai 

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xerol',
      theme: ThemeData(
       // backgroundColor: colo,
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen()
    );
  }
}
