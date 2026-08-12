import 'package:flutter/material.dart';
import 'package:my_portfolio/card/cards.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  List<dynamic> projects =
      []; // List untuk menyimpan data repositori dari GitHub
  bool isLoading =
      true; // Status loading untuk menampilkan indikator loading saat data sedang diambil
  // Fungsi untuk mengambil data repositori dari GitHub
  Future<void> fetchProjects() async {
    final response = await http.get(
      Uri.parse('https://api.github.com/users/CharloLemba/repos'),
    );
    if (response.statusCode == 200) {
      // Jika permintaan berhasil (status code 200), maka data repositori akan diambil dan disimpan dalam variabel projects
      setState(() {
        projects = jsonDecode(response.body);
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load projects');
    }
  }

  // Inisialisasi state dan memanggil fungsi fetchProjects saat widget pertama kali dibangun
  @override
  void initState() {
    super.initState();
    fetchProjects();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Text("myProjects", style: TextStyle(fontSize: 30)),
              Divider(
                color: Colors.blueGrey,
                thickness: 1,
                height: 24,
                indent: 16,
                endIndent: 16,
              ),
              SizedBox(height: 20),
              // Menampilkan indikator loading saat data sedang diambil, menampilkan pesan jika tidak ada repositori ditemukan, atau menampilkan daftar repositori jika data berhasil diambil
              isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : projects.isEmpty
                  ? const Text("Tidak ada repositori ditemukan.")
                  : ListView.builder(
                      shrinkWrap:
                          true, // Agar ListView menyesuaikan tinggi konten
                      physics:
                          const NeverScrollableScrollPhysics(), // Scroll ditangani oleh SingleChildScrollView
                      itemCount: projects.length,
                      itemBuilder: (context, index) {
                        final project = projects[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: GithubCard(
                            teks1:
                                project['name'] ??
                                '', // Menampilkan nama repositori
                            teks2:
                                project['html_url'] ??
                                '', // Menampilkan URL repositori
                            githubURL:
                                project['html_url'] ??
                                '', // Menampilkan URL repositori
                          ),
                        );
                      },
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
