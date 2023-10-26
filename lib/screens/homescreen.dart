import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        appBar: _CustomAppbar(),
        bottomNavigationBar: _CustomBottomNavigationbar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '   Xerol',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '   Hi there..\n   Euclid',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              _SearchMusic(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchMusic extends StatelessWidget {
  const _SearchMusic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: const TextStyle(color: Colors.white),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            fillColor: Colors.white.withOpacity(0.2),
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    const BorderSide(color: Colors.transparent)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    const BorderSide(color: Colors.transparent)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide:
                    const BorderSide(color: Colors.transparent))),
      ),
    );
  }
}

class _CustomBottomNavigationbar extends StatelessWidget {
  const _CustomBottomNavigationbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color.fromARGB(255, 4, 4, 4).withOpacity(0.2),
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'Favourites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.play_circle_outline),
          label: 'Play',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
    );
  }
}

class _CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const _CustomAppbar({Key? key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.grid_view_rounded,
          color: Colors.white,
        ),
      ),
      actions: [
        Container(
            margin: const EdgeInsets.only(right: 16),
            child: const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/check.JPG'),
            ))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}




































// // to fetch :-
// // albums
// // artists
// // playlists

// //import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:music_app/custom_widget/album.dart';
// import 'package:music_app/custom_widget/artist.dart';
// import 'package:music_app/custom_widget/playlist.dart';
// //import 'package:http/http.dart' as http;

// class WelcomeScreen extends StatefulWidget {
//   const WelcomeScreen({super.key});

//   @override
//   State<WelcomeScreen> createState() => _WelcomeScreenState();
// }

// class _WelcomeScreenState extends State<WelcomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       //backgroundColor: Colors.black,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Center(
//                   child: Text(
//                     'Xerol',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 42,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 35, 209, 228),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Text(
//                   'Hi there..\nEuclid',
//                   textAlign: TextAlign.start,
//                   style: TextStyle(
//                     fontSize: 27,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white70,
//                   ),
//                 ),
//                 // Search(border: border, onSearch: (String ) {  },),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Text(
//                   'Artists',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white70,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       Artists(),
//                       Artists(),
//                       Artists(),
//                       Artists(),
//                       Artists(),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Text(
//                   'Albums',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white70,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       Albums(),
//                       Albums(),
//                       Albums(),
//                       Albums(),
//                       Albums(),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Text(
//                   'Playlists',
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white70,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       Playlist(),
//                       Playlist(),
//                       Playlist(),
//                       Playlist(),
//                       Playlist(),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Color.fromARGB(255, 65, 191, 225).withOpacity(0.8),
//             Color.fromARGB(255, 198, 232, 235).withOpacity(0.8),
//           ],
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//         ),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         appBar: const _CustomAppbar(),
//         body: Container(

//         ),
//       ),
//     );
//   }
// }

// class _CustomAppbar extends StatelessWidget with PreferredSizeWidget {
//   const _CustomAppbar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.transparent,
//       elevation: 0,

//     );
//   }

//   @override

//   Size get preferredSize => const Size.fromHeight(56);
// }
