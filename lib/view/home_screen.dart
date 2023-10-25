import 'package:flutter/material.dart';

import 'package:flutter_application_3/view/all_screen.dart';
import 'package:flutter_application_3/view/movies_screen.dart';
import 'package:flutter_application_3/view/profile_screen.dart';
import 'package:flutter_application_3/view/tvshows_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(19, 26, 34, 1),
          appBar: TabBar(
            
           
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), 
              color: const Color.fromARGB(255, 255, 255, 255)),
              dividerColor: Colors.transparent,
              labelColor: Color.fromRGBO(19, 26, 34, 1),
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text("All"),
                    )),
                Tab(
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text("Movies"),
                        ))),
                Tab(
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text("TV shows"),
                        ))),
              ]),
          body: TabBarView(
            
              children: [Padding(
                padding: const EdgeInsets.all(8.0),
                child: AllScreen(),
              ), Padding(
                padding: const EdgeInsets.all(8.0),
                child: MoviesScreen(),
              ), Padding(
                padding: const EdgeInsets.all(8.0),
                child: TvShowsScreen(),
              )]),
        ));
  }
}
