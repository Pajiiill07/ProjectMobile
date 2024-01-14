import 'package:flutter/material.dart';
import 'package:uastrpl3afazila/moviesitem.dart';

class FilmPage extends StatefulWidget {
  const FilmPage({super.key});

  @override
  State<FilmPage> createState() => _FilmPageState();
}

class _FilmPageState extends State<FilmPage> {
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
      body: GridView.builder(
        itemCount: movie.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(25),
              ),
            ),
            padding: EdgeInsets.all(20),
            child: InkWell(
              onTap: (){

              },
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
                    child: Text(
                      movie[index][0],
                      style: TextStyle(
                          color: Color.fromRGBO(9, 112, 145, 1.0),
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    child: Image.asset(
                      movie[index][2],
                      width: 100,
                      height: 300,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 50),
                    child: Text(
                      movie[index][8],
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(4, 70, 93, 1.0),
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 60),
                    child: Text(
                      movie[index][5],
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(98, 23, 23, 1.0),
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
      },
      ),
    );
  }
}
