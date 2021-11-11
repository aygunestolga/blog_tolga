// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable, avoid_print

import 'package:blog_tolga/yanbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(Profile());

class Profile extends StatelessWidget {
  final double coverHeight = 280;
  final double profileHeight = 144;
  late Icon icon;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Center(child: Text("Tolga Aygüneş")),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),
              );
            },
            child: Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: ListView(
            padding: EdgeInsets.zero,
            children:[
              buildTop(),
              buildContent(),
            ]
        ),
      ),
    );
  }

  Widget buildContent() =>
      Container(
        padding: EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 8,),
            Text(
                "Tolga Aygüneş",
              style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
            ),
            Text(
            " Jr. Flutter Software Engineer ",
              style: TextStyle(fontSize: 20,color: Colors.black),
            ),
            const SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildSocialIcon(FontAwesomeIcons.github),
                const SizedBox(width: 12,),
                buildSocialIcon(FontAwesomeIcons.twitter),
                const SizedBox(width: 12,),
                buildSocialIcon(FontAwesomeIcons.linkedin),
                const SizedBox(width: 12,),
                buildSocialIcon(FontAwesomeIcons.instagram),
              ],
            ),
            const SizedBox(height: 16,),
            Divider(),
            const SizedBox(height: 16,),
            buildAbout(),
            const SizedBox(height: 32,),

          ],
        ),
      );

  Widget buildSocialIcon(IconData icon) =>
      CircleAvatar(
        radius: 25,
        child: Center(child:Icon(icon,size: 32,),) ,
      );

  Widget buildAbout() =>
    Container(
      padding: EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Text(
                "About",
              style: TextStyle(fontSize: 28,fontWeight:FontWeight.bold),
            ),
          const SizedBox(height: 16,),
          Text(
              "Herkese merhabalar Ben Tolga Aygüneş Sivas Cumhuriyet Üniversitesi Bilgisayar mühendisliği mezunuyum.24 Yaşındayım. Flutterda kendimi geliştirmeye çalışıyorum.Yakında büyük projelerde görüşmek üzere",
            style: TextStyle(fontSize: 18,color: Colors.black),
          )
        ],
      ),
    );

  Widget buildTop() {
    final top = coverHeight - profileHeight/2;
    final bottom = profileHeight/2;
    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(bottom: bottom),
              child: buildCoverImage()
          ),
          Positioned(
              top: top,
              child: buildProfileImage()
          ),
        ]
    );
  }


  Widget buildCoverImage() =>
      Container(
        color: Colors.grey,
        child:
        Image.asset(
            "images/arkaplan3.jpg",
            width: double.infinity,
            height: coverHeight ,
            fit: BoxFit.cover
        ),
      );

  Widget buildProfileImage() =>
      CircleAvatar(
        radius: profileHeight/2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: AssetImage(
          "images/tolga2.jpg",

        ),
      );
}



