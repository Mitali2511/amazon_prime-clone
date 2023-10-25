import 'package:flutter/material.dart';

class ProfileSCreen extends StatefulWidget {
  const ProfileSCreen({super.key});

  @override
  State<ProfileSCreen> createState() => _ProfileSCreenState();
}

class _ProfileSCreenState extends State<ProfileSCreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: const Color.fromRGBO(19, 26, 34, 1),
            appBar: AppBar(
              backgroundColor: const Color.fromRGBO(19, 26, 34, 1),
              title: SizedBox(
                
                child: Row(children:[ Icon(Icons.account_circle,color: Colors.white,size: 40,),
                Text("Mitali",style: TextStyle(color: Colors.white ),)]),
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
              bottom: TabBar(
                  labelStyle:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  labelColor: Colors.white,
                  indicatorColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  dividerColor: Colors.transparent,
                 
                  tabs: [
                    Tab(
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Watchlist"),
                            ))),
                    Tab(
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("Purchases"),
                            ))),
                  ]),
            ),
            body: TabBarView(children: [
              Center(
                child: RichText(textAlign: TextAlign.center,
                    text: TextSpan(

                        text: "Browse now, watch\nlater\n\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                          text:
                              "Your watchlist is shared across all of\n your devices.",
                          style: TextStyle(color: Colors.grey, fontSize: 20))
                    ])),
              ),

               Center(
                child: RichText(textAlign: TextAlign.center,
                    text: TextSpan(

                        text: "Rent & buy your\n favorites\n\n",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                          text:
                              "Watch purchase and rentals on any\n of your devices.",
                          style: TextStyle(color: Colors.grey, fontSize: 20))
                    ])),
              )
            ])

//
            ));
  }
}
