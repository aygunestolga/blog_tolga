// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:blog_tolga/Contact.dart';
import 'package:blog_tolga/Hobbies.dart';
import 'package:blog_tolga/Profile.dart';
import 'package:flutter/material.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  static const appTitle = 'Tolga Aygüneş';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(child: Text("Tolga Aygüneş", style: TextStyle(color:Colors.black ),)),
        backgroundColor: Colors.pinkAccent,

      ),
      body: const Center(
        child: Text(''),
      ),
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(200) ),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.all(Radius.elliptical(50, 50)),
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        Material(
                            borderRadius: BorderRadius.all(Radius.circular(50.0)),
                            child: Image.asset('images/pikachu.png',width: 100,height: 100,)
                        ),
                        Text("Tolga Aygüneş", style: TextStyle(color: Colors.white,fontSize: 25.0),),
                    ],
                    ),
                  ),
              ),
               ),
              CustomListFile(
                  Icons.person,'Profile',
                      (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Profile(),
                          ),
                        );
                      }
              ),
              CustomListFile(
                  Icons.app_settings_alt,'Contact',
                      (){
                        Navigator.push(
                          context,
                         MaterialPageRoute(
                    builder: (context) => Contact(),
                  ),
                );
              }),
              CustomListFile(
                  Icons.accessibility_new,
                  'Hobbies',
                      (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Hobbies(),
                          ),
                        );

              }),
              CustomListFile(Icons.vpn_lock,'Newspaper',(){}),
            ],
          ),
        ),
      ),
    );
  }
}
// ignore: must_be_immutable
class CustomListFile extends StatelessWidget {
  IconData icon;
  String text;
  Function() onTap;

  CustomListFile(this.icon,this.text,this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0,0,8.0,0),
      child: Container(
        decoration: BoxDecoration(
          border:Border(top: BorderSide(color: Colors.blueGrey.shade400))
        ),
        child: InkWell(
          splashColor: Colors.pinkAccent,
          onTap: onTap,
          child: SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text,style: TextStyle(fontSize: 16.0),),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ),
      ),
    );
  }
}