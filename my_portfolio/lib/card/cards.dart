import 'package:flutter/material.dart';

//Claass Cards umum
class Cards extends StatelessWidget {
  const Cards({
    super.key,
    required this.teks1,
    required this.teks2,
    required this.teks3,
  });
  final String? teks1;
  final String? teks2;
  final String? teks3;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              teks1 ?? '',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff0F52BA),
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 15),
            Text(
              teks2 ?? '',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 10),
            Text(
              teks3 ?? '',
              style: TextStyle(fontSize: 15, color: Colors.blueGrey),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}

//Claass Cards About
class CardsAbout extends StatelessWidget {
  const CardsAbout({
    super.key,
    required this.teks1,
    required this.teks2,
    required this.teks3,
  });
  final String? teks1;
  final String? teks2;
  final String? teks3;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Text(
              teks1 ?? '',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 25),
            Text(
              teks2 ?? '',
              style: TextStyle(fontSize: 15, color: Color(0xff0F52BA)),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 15),
            Text(
              teks3 ?? '',
              style: TextStyle(fontSize: 15, color: Colors.blueGrey),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

//Claass Cards Github Projects
class GithubCard extends StatelessWidget {
  const GithubCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card();
  }
}
