import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/view/all_screen.dart';
import 'package:flutter_application_3/view/movies_screen.dart';
import 'package:flutter_application_3/view/profile_screen.dart';
import 'package:flutter_application_3/view/tvshows_screen.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({super.key});

  @override
  State<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(19, 26, 34, 1),
        appBar: AppBar(
                elevation: 0,
                backgroundColor: const Color.fromRGBO(19, 26, 34, 1),
                title: SizedBox(
                  width: 100,
                  child: Image.asset('assets/images/prime.png'),
                ),
                actions: [
                  const Icon(
                    Icons.cast,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileSCreen()));
                    },
                    child: const Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
                bottom:TabBar(tabs: [
                        Tab(child: Text("all"),),
                        Tab(child: Text("all"),),
                        Tab(child: Text("all"),),
                      ]) ,
                ),
                body: TabBarView(children: [
                  AllScreen(),
                  MoviesScreen(),
                  TvShowsScreen()
                ]),
      ),
    );
  }
}