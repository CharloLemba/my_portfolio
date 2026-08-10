import 'package:flutter/material.dart';

class MyEducation extends StatelessWidget {
  const MyEducation({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text("myEducation", style: TextStyle(fontSize: 30)),
            Divider(
              color: Colors.blueGrey,
              thickness: 1,
              height: 24,
              indent: 16,
              endIndent: 16,
            ),
          ],
        ),
      ),
    );
  }
}
