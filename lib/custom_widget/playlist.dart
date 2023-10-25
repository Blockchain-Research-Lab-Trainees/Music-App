import 'package:flutter/material.dart';

class Playlist extends StatelessWidget {
  const Playlist({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      child: Container(
        height: 150,
        margin: const EdgeInsets.only(
          top: 15,
          //right: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
           color: const Color.fromARGB(255, 243, 241, 241).withOpacity(1),
        ),
        child: Column(
          children: [
            Expanded(
              
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage(
                        'assets/images/check.JPG'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Song 1',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

