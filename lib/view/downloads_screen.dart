import 'package:flutter/material.dart';

class DownloadsScreen extends StatefulWidget {
  const DownloadsScreen({super.key});

  @override
  State<DownloadsScreen> createState() => _DownloadsScreenState();
}

class _DownloadsScreenState extends State<DownloadsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         
          Center(
            child: RichText(
              text: const TextSpan(
                  text: 'No videos downloaded\n',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Auto Downloads:On   .  ',
                        style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.normal)),
                        TextSpan(
                          text: "Manage",
                          style: TextStyle(
                             color: Color.fromARGB(255, 89, 168, 229),
                             fontSize: 18,
                             fontWeight: FontWeight.bold),
                        )
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
