import 'package:flutter/material.dart';
import 'package:my_portfolio/card/cards.dart';

class MyEducation extends StatelessWidget {
  const MyEducation({super.key});

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
              "myEducation",
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
              teks1: "Elementry School",
              teks2: "SD NEGERI 2 FONTEIN",
              teks3: "2003 - 2009",
            ),
            SizedBox(height: 15),
            Cards(
              teks1: "Junior High School",
              teks2: "SMP NEGERI 2 KUPANG",
              teks3: "2009 - 2012",
            ),
            SizedBox(height: 15),
            Cards(
              teks1: "Senior High School",
              teks2: "SMA NEGERI 1 KUPANG (Natural Science Major)",
              teks3: "2012 - 2015",
            ),
            SizedBox(height: 15),
            Cards(
              teks1: "Bachelor's Degree",
              teks2: "UNIKA WIDYA MANDIRA KUPANG (Computer Science Major)",
              teks3: "2015 - 2022",
            ),
          ],
        ),
      ),
    );
  }
}
