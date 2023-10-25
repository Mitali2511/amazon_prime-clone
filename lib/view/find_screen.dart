import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FindScreen extends StatefulWidget {
  const FindScreen({super.key});

  @override
  State<FindScreen> createState() => _FindScreenState();
}

class _FindScreenState extends State<FindScreen> {
List <String> geners=["Action and adventure", "Anime","Comedy","Documentry","Drama","Fantasy"];

List all_movies=["Iron Man",
"Iron Man 3",
"The Incredible Hulk",
"Iron Man 2 ",
"Captain America: The Winter Soldier ",
"Avengers: Age of Ultron ",
"Thor: Ragnarok",
"Thor",
"Captain America: The First Avenger",
"Marvel's The First Avenger" ];


List results = [];
List movies = [];
  
refresh(String enteredword) {
    
    if (enteredword.isEmpty) {
      results = all_movies;
    } else {
      results = all_movies
          .where((element) => element
              .toString()
              .toLowerCase()
              .contains(enteredword.toLowerCase()))
          .toList();
          
    }
    setState(() {
            movies=results;
            
          });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromRGBO(19, 26, 34, 1),
       body: SingleChildScrollView(
        padding: EdgeInsets.all(12),
         child: Column(
           children: [
             TextField(
              onTapOutside: (event) {
                movies=[];
                setState(() {
                  
                });
              },
              onChanged: (value) => refresh(value),
               
               decoration: InputDecoration(
               
                 filled: true,
                 fillColor: Colors.white,
                 prefixIcon: Icon(Icons.search),
                 suffixIcon: Icon(Icons.mic),
                 hintText: "Search by actor,title..",
                 
               ),
               
             ),
              movies.isNotEmpty?
               ListView.builder(
                shrinkWrap: true,
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(movies[index]),
                      tileColor: Colors.white,
                    );
                    // return Container(
                    //   padding: EdgeInsets.all(12),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       lis
                    //       Text(
                    //         movies[index],
                    //         style: TextStyle(
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.bold,
                    //           color: Colors.white
                    //         ),
                    //       ),
                          
                          
                          
                    //     ],
                    //   ),
                    // );
                  }):
                  
           Offstage(),
         
             SizedBox(
               height: 20,
             ),
             Align(
               alignment: Alignment.topLeft,
               child: Text("Genres",style: TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 20
               ),),
             ),
             SizedBox(
               height: 20,
             ),
             
             GridView.builder(
              
              shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
               itemCount: geners.length,
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemBuilder: (context,index){
               return SizedBox(
              height: 100,
              width: 200,
               child: Card(
                
                color: Color.fromARGB(19, 26, 34, 1),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(child: Text(geners[index],style: TextStyle(color: Colors.white),)),
                ),),
             );

             })
         
           ],
         ),
       ),
    );
    

  }
}