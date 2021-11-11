// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:blog_tolga/yanbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() => runApp(Contact());

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Center(child: Text("Contact")),
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
        body: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      radius: 70.0,
                      backgroundColor: Colors.brown,
                      backgroundImage: AssetImage("images/tolga1.png"),
                    ),
                  ),
                  Text(
                    "Tolga Aygüneş",
                    style: TextStyle(
                        fontFamily: "MochiyPopOne",
                        fontSize: 15,
                        color: Colors.pinkAccent
                    ),
                  ),
                  Text(
                    "My Portal My Rules",
                    style: TextStyle(
                        fontFamily: "MochiyPopOne",
                        fontSize: 10,
                        color: Colors.pinkAccent
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Card(
                    margin: EdgeInsets.symmetric(
                        horizontal: 15.0
                    ),
                    color: Colors.blueGrey[900],
                    child: ListTile(
                      leading: FaIcon(FontAwesomeIcons.phone,color: Colors.blueAccent,size: 35,),
                      title: Text(
                        "+905524215861",
                        style: TextStyle(
                            color:Colors.white,
                            fontSize: 15.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Card(
                    margin: EdgeInsets.symmetric(
                        horizontal: 15.0
                    ),
                    color: Colors.blueGrey[900],
                    child: ListTile(
                      leading: FaIcon(FontAwesomeIcons.mailchimp,color: Colors.blueAccent,size: 35,),
                      title:Text(
                        "aygunestolgaa@gmail.com",
                        style: TextStyle(
                            color:Colors.white,
                            fontSize: 15.0),
                      ),
                    ),
                  ),
                  SizedBox(height:5.0),
                  Card(
                    margin: EdgeInsets.symmetric(
                        horizontal: 15.0
                    ),
                    color: Colors.blueGrey[900],
                    child: ListTile(
                      leading: FaIcon(FontAwesomeIcons.github,color: Colors.black,size: 35,),
                      title: Text(
                        "Github: aygunestolga",
                        style: TextStyle(
                            color:Colors.white,
                            fontSize: 15.0),
                      ),
                    ),
                  ),
                  SizedBox(height:5.0),
                  Card(
                    margin: EdgeInsets.symmetric(
                        horizontal: 15.0
                    ),
                    color: Colors.blueGrey[900],
                    child: ListTile(
                      leading: FaIcon(FontAwesomeIcons.instagram,color: Colors.blueAccent,size: 35,),
                      title: Text(
                        "İnstagram: aygunestolga",
                        style: TextStyle(
                            color:Colors.white,
                            fontSize: 15.0),
                      ),
                    ),
                  ),
                  SizedBox(height:5.0),
                  Card(
                    margin: EdgeInsets.symmetric(
                        horizontal: 15.0
                    ),
                    color: Colors.blueGrey[900],
                    child: ListTile(
                      leading: FaIcon(FontAwesomeIcons.linkedin,color: Colors.blueAccent,size: 35,),
                      title: Text(
                        "Linkedin: Tolga Aygüneş",
                        style: TextStyle(
                            color:Colors.white,
                            fontSize: 15.0),
                      ),
                    ),
                  ),
                  SizedBox(height:5.0),
                  Card(
                    margin: EdgeInsets.symmetric(
                        horizontal: 15.0
                    ),
                    color: Colors.blueGrey[900],
                    child: ListTile(
                      leading: FaIcon(FontAwesomeIcons.twitter,color: Colors.blueAccent,size: 35,),
                      title: Text(
                        "Twitter: Tolga Aygüneş",
                        style: TextStyle(
                            color:Colors.white,
                            fontSize: 15.0),
                      ),
                    ),
                  ),
                  SizedBox(height:5.0),
                  Card(
                    margin: EdgeInsets.symmetric(
                        horizontal: 15.0
                    ),
                    color: Colors.blueGrey[900],
                    child: ListTile(
                      leading: FaIcon(FontAwesomeIcons.facebook,color: Colors.blueAccent,size: 35,),
                      title: Text(
                        "Facebook: Tolga Aygüneş",
                        style: TextStyle(
                            color:Colors.white,
                            fontSize: 15.0),
                      ),
                    ),
                  ),


                ],
              ),
            )
        ),
      ),
    );
  }
}
