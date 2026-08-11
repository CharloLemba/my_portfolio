import 'package:flutter/material.dart';
import 'package:my_portfolio/card/cards.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({super.key});

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
              GithubCard(
                teks1: "hello_world",
                teks2: "https://github.com/CharloLemba/hello_world",
                githubURL: "https://github.com/CharloLemba/hello_world",
              ),
              SizedBox(height: 20),
              GithubCard(
                teks1: "style",
                teks2: "https://github.com/CharloLemba/style",
                githubURL: "https://github.com/CharloLemba/style",
              ),
              SizedBox(height: 20),
              GithubCard(
                teks1: "column_row",
                teks2: "https://github.com/CharloLemba/column_row",
                githubURL: "https://github.com/CharloLemba/column_row",
              ),
              SizedBox(height: 20),
              GithubCard(
                teks1: "card_parsing",
                teks2: "https://github.com/CharloLemba/card_parsing",
                githubURL: "https://github.com/CharloLemba/card_parsing",
              ),
              SizedBox(height: 20),
              GithubCard(
                teks1: "navigation",
                teks2: "https://github.com/CharloLemba/navigation",
                githubURL: "https://github.com/CharloLemba/navigation",
              ),
              SizedBox(height: 20),
              GithubCard(
                teks1: "tabbar",
                teks2: "https://github.com/CharloLemba/tabbar",
                githubURL: "https://github.com/CharloLemba/tabbar",
              ),
              SizedBox(height: 20),
              GithubCard(
                teks1: "listview",
                teks2: "https://github.com/CharloLemba/listview",
                githubURL: "https://github.com/CharloLemba/listview",
              ),
              SizedBox(height: 20),
              GithubCard(
                teks1: "my_portfolio",
                teks2: "https://github.com/CharloLemba/my_portfolio",
                githubURL: "https://github.com/CharloLemba/my_portfolio",
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
