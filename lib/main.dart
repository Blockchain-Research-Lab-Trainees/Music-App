import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/custom_widget/album.dart';
import 'package:music_app/custom_widget/artist.dart';
import 'package:music_app/custom_widget/playlist.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/screens/homescreen.dart';

void main() {
  runApp(const MusicApp());
}

// key lelo bhai :- 6a506bf363msh70b280c80245a2ap15b295jsn61aff7c2dc6e
// URL :- https://spotify23.p.rapidapi.com/search/?
// queries apne according lele bhai 



class MusicApp extends StatefulWidget {
  const MusicApp({super.key});

  @override
  State<MusicApp> createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xerol',
      theme: ThemeData(
       // backgroundColor: colo,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
                displayColor: Colors.white,
                ),
        ),
        scaffoldBackgroundColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
        primarySwatch: Colors.amber,
      ),
      home: const WelcomeScreen(),
      getPages: [
        GetPage(name: '/home', page: () => const WelcomeScreen()),
        GetPage(name: '/playlist', page: () => const Playlist()),
        GetPage(name: '/album', page: () => const Albums()),
        GetPage(name: '/artist', page: () => const Artists()),],
    );
  }
}
