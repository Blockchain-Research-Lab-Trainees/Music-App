
import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:music_app/models/playlist_model.dart';
import 'package:music_app/models/song_model.dart';
import 'package:music_app/widget/section_header.dart';
import 'package:music_app/widget/song_card.dart';

class TrendingMusic extends StatefulWidget {
  



  @override
  State<TrendingMusic> createState() => _TrendingMusicState();
}

class _TrendingMusicState extends State<TrendingMusic> {
  List<Song> songs = [];
  List<Playlist> playlists = [];


  @override
  void initState() {
    super.initState();
    fetchData();
  }

  
  Future<void> fetchData() async {
    const apiKey = '870516290emshfc2cb0bee7929bap14981ejsna79f74f1ce4f';
    final url = Uri.parse('https://shazam.p.rapidapi.com/songs/list-recommendations?key=484129036&locale=en-US');

    final response = await http.get(
      url,
      headers: {
        'X-RapidAPI-Key': apiKey,
        'X-RapidAPI-Host': 'shazam.p.rapidapi.com',
      },
    );

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      List<Song> songList = [];
      Random random = Random();

      for (var item in jsonData['tracks']) {
        songList.add(Song(
          title: item['title'],
          description: item['subtitle'],
          url: item['share']['subject'],
          coverUrl: item['images']['background'],
        ));
      }

    
      songList.shuffle(random);

      setState(() {
        songs = songList;
        playlists = generatePlaylists(songList, 4, random); 
      });
    } else {
      throw Exception('Failed to load data!');
    }
  }

  List<Playlist> generatePlaylists(List<Song> songList, int playlistSize, Random random) {
    List<Playlist> generatedPlaylists = [];

    for (int i = 0; i < songList.length; i += playlistSize) {
      List<Song> playlistSongs = songList.sublist(i, min(i + playlistSize, songList.length));
      generatedPlaylists.add(Playlist(songs: playlistSongs));
    }

    return generatedPlaylists;
  }
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, top: 20, left: 20),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: SectionHeader(
              title: 'Music for you',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: songs.length,
              itemBuilder: (context, index) {
              //    return Column(
              //   children: [
              //     ListTile(
              //       title: Text('Playlist ${index + 1}'),
              //     ),
              //     for (var song in playlists[index].songs)
              //       ListTile(
              //         leading: Image.network(song.coverUrl),
              //         title: Text(song.title),
              //         subtitle: Text(song.description),
              //       ),
              //   ],
              // );
                return SongCard(song: songs[index]);
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          for (var playlist in playlists)
            Column(
              children: [
                ListTile(
                  title: Text('Playlist ${playlists.indexOf(playlist) + 1}' , style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                for (var song in playlist.songs)
                  ListTile(
                    leading: Image.network(song.coverUrl),
                    title: Text(song.title , style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Color.fromARGB(255, 248, 246, 246)
                          .withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                      fontSize: 10, 
                    ),),
                    subtitle: Text(song.description),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
