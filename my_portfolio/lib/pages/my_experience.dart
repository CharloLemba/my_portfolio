import 'package:flutter/material.dart';
import 'package:my_portfolio/card/cards.dart';

class MyExperience extends StatelessWidget {
  const MyExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "myExperience",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.justify,
            ),
            Divider(
              color: Colors.blueGrey,
              thickness: 1,
              height: 24,
              indent: 16,
              endIndent: 16,
            ),
            SizedBox(height: 20),
            Cards(
              teks1: "Marketing Executive",
              teks2: "PT. SURYA MAHKOTA KENCANA",
              teks3: "2023",
            ),
            SizedBox(height: 15),
            Cards(
              teks1: "Spare Parts Administrator",
              teks2: "PT. SURYA MAHKOTA KENCANA",
              teks3: "2023 - present",
            ),
          ],
        ),
      ),
    );
  }
}
