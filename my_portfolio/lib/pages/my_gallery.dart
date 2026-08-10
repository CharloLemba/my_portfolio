import 'package:flutter/material.dart';

class MyGallery extends StatelessWidget {
  const MyGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Text("myGallery", style: TextStyle(fontSize: 30)),
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
