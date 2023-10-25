import 'package:flutter/material.dart';
import 'package:flutter_application_3/view/downloads_screen.dart';
import 'package:flutter_application_3/view/find_screen.dart';
import 'package:flutter_application_3/view/home_screen.dart';
import 'package:flutter_application_3/view/profile_screen.dart';
import 'package:flutter_application_3/view/store_Screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentindex=0;

  List pages = [
    HomeScreen(),
    StoreSCreen(),
    
    DownloadsScreen(),
    FindScreen(),
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ],),
    
    body:pages[currentindex] ,
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor:  Color.fromRGBO(19, 26, 34, 1),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      onTap: (index) {
          setState(() {
            currentindex=index;
          });
        },
      items: [
BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_sharp),label: 'Store'),

BottomNavigationBarItem(icon: Icon(Icons.file_download_outlined),label: 'Downloads'),
 BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Find'),

    ]),
    );
  }
}