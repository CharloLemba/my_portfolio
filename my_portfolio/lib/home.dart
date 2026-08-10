import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'pages/my_education.dart' as my_education;
import 'pages/my_experience.dart' as my_experience;
import 'pages/my_gallery.dart' as my_gallery;
import 'pages/my_projects.dart' as my_projects;

import 'pages/about.dart' as about;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  // Controller untuk swipe/pindah halaman dengan animasi
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
        Awal AppBar
      */
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.blueGrey,
        backgroundColor: const Color(0xff0F52BA),
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: InkWell(
            borderRadius: BorderRadius.circular(40),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(builder: (context) => about.About()),
              );
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2.0),
              ),
              child: CircleAvatar(
                radius: 0,
                backgroundColor: const Color(0xff0F52BA),
                child: ClipOval(
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      "assets/avatar/20240217_145327.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        title: const Text("myPortfolio", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      /*
        Akhir AppBar
      */
      extendBody: true,
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: [
            my_education.MyEducation(),
            my_experience.MyExperience(),
            my_gallery.MyGallery(),
            my_projects.MyProjects(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color(0xff0F52BA),
        child: Padding(
          padding: EdgeInsets.only(
            left: 15.0,
            right: 15.0,
            top: 10.0,
            bottom: MediaQuery.of(context).padding.bottom + 10.0,
          ),
          child: GNav(
            backgroundColor: const Color(0xff0F52BA),
            color: Colors.white70,
            activeColor: const Color(0xff0F52BA),
            tabBackgroundColor: Colors.white,
            gap: 8,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            },
            tabs: [
              const GButton(icon: Icons.school, text: "myEducation"),
              const GButton(icon: Icons.work, text: "myExperience"),
              const GButton(icon: Icons.photo, text: "myGallery"),
              GButton(
                // Menggunakan FaIcon di dalam leading
                leading: FaIcon(
                  FontAwesomeIcons.github,
                  size: 20,
                  color: _selectedIndex == 3
                      ? const Color(0xff0F52BA)
                      : Colors.white70,
                ),
                icon: Icons.code, // Placeholder wajib dari GNav
                text: "myProjects",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
