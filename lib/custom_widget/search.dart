
// import 'package:flutter/material.dart';

// class Search extends StatefulWidget {
//   const Search({
//     super.key,
//     required this.border,
//   });

//   final OutlineInputBorder border;

//   @override
//   State<Search> createState() => _SearchState();
// }

// class _SearchState extends State<Search> {



//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(
//         top: 15,
//         bottom: 25,
//       ),
//       child: Expanded(
//         child: TextField(
//           decoration: InputDecoration(
//             border: widget.border,
//             enabledBorder: widget.border,
//             focusedBorder: widget.border,
//             prefixIcon: const Icon(Icons.search),
//             hintText: 'Search',
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Search extends StatefulWidget {
  const Search({
    super.key,
    required this.onSearch,
    required this.border,
  });

  final OutlineInputBorder border;
  final Function(String) onSearch;

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String searchText = '';

  void searchSpotify() async {
    // Make an HTTP request to the Spotify API with the user's search query.
    final apiKey = '6a506bf363msh70b280c80245a2ap15b295jsn61aff7c2dc6e';
    final apiHost = 'spotify23.p.rapidapi.com';

    final response = await http.get(
      Uri.https(
        apiHost,
        '/search/',
        {
          'q': searchText, 
          'type': 'multi',
          'offset': '0',
          'limit': '10',
          'numberOfTopResults': '5',
        },
      ),
      headers: {
        'X-RapidAPI-Key': apiKey,
        'X-RapidAPI-Host': apiHost,
      },
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print(data);
      // You can process the data here and display the search results.
    } else {
      print('Failed to perform the search');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        bottom: 25,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: widget.border,
          enabledBorder: widget.border,
          focusedBorder: widget.border,
          prefixIcon: const Icon(Icons.search),
          hintText: 'Search',
        ),
        onChanged: (value) {
          setState(() {
            searchText = value;
          });
        },
        onSubmitted: (value) {
          widget.onSearch(value);
        },
      ),
    );
  }
}

