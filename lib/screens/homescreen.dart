import 'package:flutter/material.dart';
import 'package:music_app/custom_widget_homescreen/appbar.dart';
import 'package:music_app/custom_widget_homescreen/navbar.dart';
import 'package:music_app/custom_widget_homescreen/playlistx.dart';
import 'package:music_app/custom_widget_homescreen/search.dart';
import 'package:music_app/custom_widget_homescreen/trendingmusic.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
   
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 21, 234, 92).withOpacity(0.8),
            const Color.fromARGB(255, 4, 4, 4).withOpacity(0.8),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const CustomAppbar(),
        bottomNavigationBar: const CustomBottomNavigationbar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '   Xerol',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                '   Hi there..\n   Euclid',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              const SearchMusic(),
              TrendingMusic(),
             // PlaylistMusic(),

            ],
          ),
        ),
      ),
    );
  }
}


