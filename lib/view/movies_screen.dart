import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../model/class_helper.dart';
import 'info_screen.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  State<MoviesScreen> createState() => _MoviesScreenState();
}

class _MoviesScreenState extends State<MoviesScreen> {

List<HelperModel> slides = [
    HelperModel(
        image_slides: 'assets/images/sweettooth.jpg',
        image_rows: 'assets/images/image2.jpg',
        title: 'Goblin',
        information:
            'Iron Man is a superhero appearing in American '),
    HelperModel(
        image_slides: 'assets/images/predestination.jpg',
        image_rows: 'assets/images/silentsea2.jpeg',
        title: 'Predestionation',
        information:
            'Iron Man is a superhero appearing in American comic books \npublished by Marvel Comics. Co-created by writer and\n editor Stan Lee, developed by scripter Larry Lieber, and designed by artists Don Heck and Jack Kirby, the character first appeared in Tales of Suspense #39 (cover dated March 1963), and received his own title in Iron Man #1 (May 1968). In 1963, the character founded the Avengers '),
    HelperModel(
        image_slides: 'assets/images/silentsea-slide.jpg',
        image_rows: 'assets/images/sweettooth2.jpeg',
        title: 'Silent Sea',
        information:
            'Iron Man is a superhero appearing in American comic books \npublished by Marvel Comics. Co-created by writer and\n editor Stan Lee, developed by scripter Larry Lieber, and designed by artists Don Heck and Jack Kirby, the character first appeared in Tales of Suspense #39 (cover dated March 1963), and received his own title in Iron Man #1 (May 1968). In 1963, the character founded the Avengers '),
    HelperModel(
        image_slides: 'assets/images/sweettooth.jpg',
        image_rows: 'assets/images/silentsea2.jpeg',
        title: 'Sweettooth',
        information:
            'Iron Man is a superhero appearing in American comic books \npublished by Marvel Comics. Co-created by writer and\n editor Stan Lee, developed by scripter Larry Lieber, and designed by artists Don Heck and Jack Kirby, the character first appeared in Tales of Suspense #39 (cover dated March 1963), and received his own title in Iron Man #1 (May 1968). In 1963, the character founded the Avengers '),
    HelperModel(
        image_slides: 'assets/images/avenger.jpeg',
        image_rows: 'assets/images/image2.jpg',
        title: 'Ironman',
        information:
            'Iron Man is a superhero appearing in American comic books \npublished by Marvel Comics. Co-created by writer and\n editor Stan Lee, developed by scripter Larry Lieber, and designed by artists Don Heck and Jack Kirby, the character first appeared in Tales of Suspense #39 (cover dated March 1963), and received his own title in Iron Man #1 (May 1968). In 1963, the character founded the Avengers ')
  ];
  final controller = PageController(viewportFraction: 0.8, keepPage: false);

  int currentPageIndex = 0;
  Timer? timer;
  bool colorChange = false;

  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    print('started');
    setState(() {
      const duration = Duration(seconds: 2);
      timer = Timer.periodic(duration, (Timer timer) {
        if (currentPageIndex < slides.length - 1) {
          currentPageIndex++;
        } else {
          currentPageIndex = 0;
        }
if (controller.hasClients){
        controller.animateToPage(currentPageIndex,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);}
      });
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.all(12),
      child: Column(
        children: [
          SizedBox(
                height: 200,
                child: PageView.builder(
                    itemCount: slides.length,
                    controller: controller,
                    itemBuilder: (context, index) {
                      return Container(
                          width: 200,
                          child: Container(
                            width: 170,
                            child: Image.asset(
                              slides[index].image_slides,
                              fit: BoxFit.fill,
                            ),
                          ));
                    }),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: slides.length,
                effect: const ScrollingDotsEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    dotColor: Colors.white,
                    activeDotColor: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Row(children: [
                  const Text(
                    'Continue Watching ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ))
                ]),),
                  SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < slides.length; i++) ...[
                      GestureDetector(
                          onTap: () {
                            String image = slides[i].image_slides;
                            String title = slides[i].title;
                            String information = slides[i].information;
                            Navigator.push(
                              
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        InfoScreen(image, title, information)));
                          },
                          child: Container(
                            height: 100,
                            width: 200,
                            child: Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 190,
                                  child: Image.asset(
                                    slides[i].image_slides,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                
                              ],
                            ),
                          ))
                    ]
                  ],
                ),
              ),

//Second row
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Row(children: [
                  RichText(
                    text: const TextSpan(
                        text: 'Prime ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 89, 168, 229),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                              text: '- Amzon Originals and \nExclusives',
                              style: TextStyle(color: Colors.white)),
                        ]),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ))
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < slides.length; i++) ...[
                      GestureDetector(
                          onTap: () {
                            String image = slides[i].image_slides;
                            String title = slides[i].title;
                            String information = slides[i].information;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        InfoScreen(image, title, information)));
                          },
                          child: Container(
                            height: 250,
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  height: 250,
                                  width: 140,
                                  child: Image.asset(
                                    slides[i].image_rows,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                
                              ],
                            ),
                          ))
                    ]
                  ],
                ),
              ),
//Third row
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Row(children: [
                  RichText(
                    text: const TextSpan(
                        text: 'Trending Now',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18)),
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ))
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < slides.length; i++) ...[
                      GestureDetector(
                          onTap: () {
                            String image = slides[i].image_slides;
                            String title = slides[i].title;
                            String information = slides[i].information;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        InfoScreen(image, title, information)));
                          },
                          child: Container(
                            height: 250,
                            width: 150,
                            child: Column(
                              children: [
                                Container(
                                  height: 250,
                                  width: 140,
                                  child: Image.asset(
                                    slides[i].image_rows,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                
                              ],
                            ),))]
        ],
      )
      ),
     ] ))

     );
  }
}