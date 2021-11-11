// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:blog_tolga/Profile.dart';
import 'package:blog_tolga/yanbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyBlog());

class MyBlog  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

        initialRoute: "/homepage",
       routes: {
          "/homepage" : (context) => MyApp(),
          "/secondscreen" : (context) => Profile(),
       //   "/helpscreen" : (context) => const HelpScreen(),
        //  "/videopage" : (context) => const VideoPage(),
       //   "/aboutus" : (context) => const AboutUs(),
        },

      home:Scaffold(
       body: Container(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: [
              MyApp(),
           ],
         ),

       ),
      )
    );
  }
}
