import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Filmlist(),
    );
  }
}

class Film {
  String text;
  String author;

  Film({required this.text, required this.author});
}

class Filmlist extends StatelessWidget {
  final List<Film> films = [
    Film(text: 'Her', author: 'Spike Jonze'),
    Film(text: 'The Revenant', author: 'Alejandro G. Iñárritu.'),
    Film(text: 'The Game', author: 'David Fincher'),
    Film(text: 'Guardians of the Galaxy Vol.2', author: 'James Gunn'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Four Favorite Films'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(230, 60, 201, 219),
      ),
      body: ListView(
        children: films.map((film) => FilmCard(film: film)).toList(),
      ),
    );
  }
}

class FilmCard extends StatelessWidget {
  final Film film;

  // Updated constructor to only accept `film`
  FilmCard({required this.film});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              film.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              film.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
