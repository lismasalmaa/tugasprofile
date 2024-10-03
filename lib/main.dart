import 'dart:js';

import 'package:flutter/material.dart';
import 'page2.dart';
import 'package:profil_diri_lisma/page2.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    ));

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg_pink.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color.fromRGBO(237, 176, 215, 1),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage('images/profil.jpg'),
                      ),
                      Text("Lisma Salmaa Setiawan",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                      Text(
                          "Hi, my name is Lisma Salmaa Setiawan. I am a student at SMK Wikrama Bogor majoring in software and game development ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(248, 250, 250, 250))),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Page2()),
                            );
                          },
                          child: Text('See More')),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
