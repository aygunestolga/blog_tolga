// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, constant_identifier_names, use_key_in_widget_constructors
import 'package:blog_tolga/yanbar.dart';
import 'package:swipe_deck/swipe_deck.dart';
import 'package:flutter/material.dart';

const IMAGES = ["lol","valorant","fifa","soccer","basketball","nature","Trabzon","counter","travel"];

void main() => runApp(Hobbies());

class Hobbies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hobbies",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Center(child: Text("Hobbies"),),
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

      body: Container(
        padding: EdgeInsets.all(10),
        child: SwipeDeck(
          aspectRatio: 1,
            widgets: IMAGES
                .map((e) =>
                Image.asset("images/$e.jpg",
                  fit: BoxFit.cover,
                ))
                .toList()),
      ),
    );
  }
}

