// to fetch :-
// albums
// artists
// playlists

import 'package:flutter/material.dart';
import 'package:music_app/screens/custom_widget/recently_played.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white70,
        ),
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(50),
          right: Radius.circular(50),
        ));

    return  const Scaffold(
      //backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Xerol',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 35, 209, 228),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Hi there..\nEuclid',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    bottom: 25,
                  ),
                  child: Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: border,
                        enabledBorder: border,
                        focusedBorder: border,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search',
                      ),
                    ),
                  ),
                ),
                Text(
                  'Recently Played',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                        RecentPlayed(),
                        RecentPlayed(),
                        RecentPlayed(),
                        RecentPlayed(),
                        RecentPlayed(),
                
              ],
                ),
              
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Albums',
              style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
            ),
            SizedBox(
              height: 15,
            ),
            
            SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                        RecentPlayed(),
                        RecentPlayed(),
                        RecentPlayed(),
                        RecentPlayed(),
                        RecentPlayed(),
                
              ],
                ),
              
            ),

              SizedBox(
              height: 15,
            ),
            Text(
              'Playlists',
              style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                  ),
            ),
            SizedBox(
              height: 15,
            ),
            
            SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                        RecentPlayed(),
                        RecentPlayed(),
                        RecentPlayed(),
                        RecentPlayed(),
                        RecentPlayed(),
                
              ],
                ),
              
            ),

              ],
          ),
        ),
        
      ),
      ),
      );
  }
}
