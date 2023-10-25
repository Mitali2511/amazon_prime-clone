import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InfoScreen extends StatelessWidget {
  String image;
  String title;
  String info;
  InfoScreen(this.image, this.title, this.info, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 26, 34, 1),
      appBar: AppBar(iconTheme: IconThemeData(color: Colors.white),
      elevation: 0,
        backgroundColor: const Color.fromRGBO(19, 26, 34, 1),
        title: SizedBox(
          width: 100,
          child: Image.asset('assets/images/prime.png'),
        ),
        actions: const [
          Icon(
            Icons.cast,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.account_circle,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
             Align(alignment: Alignment.topLeft,
              child: Text(
               title,textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ), ),
                 
               
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 10,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Row(children: [
                  Text(
                    'Season 1 ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 15, 121, 179),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          Text(
                            'Episode 1\nWatch now',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ))),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 38.0,
                      ),
                      Text('Watchlist',
                          style: TextStyle(fontSize: 14, color: Colors.white))
                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Column(
                    children: [
                      Icon(
                    Icons.file_download_outlined,
                    color: Colors.white,
                    size: 38.0,
                  ),
                      Text('Download\n Season 1',
                          style: TextStyle(fontSize: 14, color: Colors.white))
                    ],
                  ),
                  SizedBox(
                    width: 70,
                  ),
                   Column(
                    children: [
                     Icon(
                    Icons.share_outlined,
                    color: Colors.white,
                    size: 38.0,
                  ),
                      Text('Share',
                          style: TextStyle(fontSize: 14, color: Colors.white))
                    ],
                  ),
                  
                ],
              ),
              SizedBox(
                    height: 40,
                  ),
              Text(
                info,
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
