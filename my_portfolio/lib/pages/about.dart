import 'package:flutter/material.dart';
import 'package:my_portfolio/card/cards.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({super.key});

  Future<void> openUrl(String url) async {
    final uri = Uri.parse(url);

    try {
      if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
        debugPrint('Tidak dapat membuka: $url');
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.blueGrey,
        backgroundColor: Color(0xff0F52BA),
        foregroundColor: Colors.white,
        title: Text("About Me"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 25),
                Container(
                  width: 210,
                  height: 210,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2.0),
                  ),
                  child: CircleAvatar(
                    radius: 0,
                    backgroundColor: const Color(0xff0F52BA),
                    child: ClipOval(
                      child: SizedBox(
                        width: 200,
                        height: 200,
                        child: Image.asset(
                          "assets/avatar/20240217_145327.jpg",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                CardsAbout(
                  teks1: "CHARLO VIVALDI LEMBA, S.KOM",
                  teks2:
                      "Pengembang aplikasi berbasis Flutter yang bersemangat menciptakan aplikasi mobile modern yang rapi, cepat, dan memberikan pengalaman pengguna terbaik.",
                  teks3:
                      "Flutter Developer passionate about building modern, clean, and high-performance mobile aplications with excellent user experience.",
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () async {
                await openUrl('mailto:carlolemba98@outlook.com');
              },
              icon: FaIcon(
                FontAwesomeIcons.envelope,
                color: Colors.blue,
                size: 30,
              ),
              tooltip: "Email",
            ),
            IconButton(
              onPressed: () async {
                await openUrl('https://github.com/CharloLemba');
              },
              icon: FaIcon(
                FontAwesomeIcons.github,
                color: Colors.black,
                size: 30,
              ),
              tooltip: "GitHub",
            ),
            IconButton(
              onPressed: () async {
                await openUrl('https://wa.me/6281237728383');
              },
              icon: FaIcon(
                FontAwesomeIcons.whatsapp,
                color: Colors.green,
                size: 30,
              ),
              tooltip: "WhatsApp",
            ),
          ],
        ),
      ),
    );
  }
}
