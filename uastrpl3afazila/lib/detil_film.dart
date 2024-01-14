import 'package:flutter/material.dart';
import 'package:uastrpl3afazila/moviesitem.dart';

class DetilFilm extends StatefulWidget {
  const DetilFilm({super.key});

  @override
  State<DetilFilm> createState() => _DetilFilmState();
}

class _DetilFilmState extends State<DetilFilm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 136, 180, 1.0),
        foregroundColor: Color.fromRGBO(255, 255, 255, 1.0),
        title: Text(
            'Movies List'
        ),
        actions: [
          Padding(padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.movie_creation_rounded),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.fromLTRB(20, 10, 0, 15),
            child: Text(
              movie[index][0],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(9, 112, 145, 1.0)
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
               children: [
                 Text(
                   movie[index][1],
                   style: TextStyle(
                       fontSize: 20,
                       fontWeight: FontWeight.bold,
                       color: Color.fromRGBO(9, 112, 145, 1.0)
                   ),
                 ),
                 Padding(padding: EdgeInsets.all(10),
                   child: Text(
                     movie[index][7],
                     style: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.bold,
                         color: Color.fromRGBO(9, 112, 145, 1.0)
                     ),
                   ),
                 ),
                 Padding(padding: EdgeInsets.all(10),
                   child: Image.asset(
                     movie[index][2],
                     width: 300,
                     height: 500,
                   ),
                 ),
               ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
            child: Text(
              movie[index][6],
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(9, 112, 145, 1.0)
              ),
            ),
          )
        ],
      ),
    );
  }
}
