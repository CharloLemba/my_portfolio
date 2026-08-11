import 'package:flutter/material.dart';

class MyGallery extends StatelessWidget {
  const MyGallery({super.key});

  final List<String> imagePaths = const [
    'assets/gallery/foto1.JPG',
    'assets/gallery/foto2.jpg',
    'assets/gallery/foto3.jpg',
    'assets/gallery/foto4.jpg',
    'assets/gallery/foto5.jpg',
    'assets/gallery/foto6.JPG',
    'assets/gallery/foto7.jpg',
    'assets/gallery/foto8.JPG',
    'assets/gallery/foto9.jpg',
  ];

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
            SizedBox(height: 25),
            // Expanded agar GridView mengisi sisa ruang layar
            Expanded(
              child: GridView.builder(
                itemCount: imagePaths.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // 3 foto per baris
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  final imagePath = imagePaths[index];

                  return GestureDetector(
                    onTap: () {
                      // Navigasi ke tampilan Full Screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailImagePage(
                            imagePath: imagePath,
                            heroTag:
                                'gallery_image_$index', // Tag harus unik untuk setiap gambar
                          ),
                        ),
                      );
                    },
                    // Hero Widget pada thumbnail
                    child: Hero(
                      tag: 'gallery_image_$index',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(imagePath, fit: BoxFit.cover),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailImagePage extends StatelessWidget {
  final String imagePath;
  final String heroTag;

  const DetailImagePage({
    super.key,
    required this.imagePath,
    required this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.pop(context), // Tap di mana saja untuk kembali
          child: Hero(
            tag: heroTag, // Tag disamakan dengan gambar asal
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain, // Menampilkan seluruh gambar tanpa terpotong
            ),
          ),
        ),
      ),
    );
  }
}
