import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Fever extends StatefulWidget {
  const Fever({ Key key }) : super(key: key);

  @override
  _FeverState createState() => _FeverState();
}

class _FeverState extends State<Fever> {
  var image = 'assets/images/fever.png';
  var title = 'Fever';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Center(
          child: Hero(
                  tag: 'tag-$image',
                  child: Opacity(opacity: 0.5,child: Image.asset(image, height: 350,fit: BoxFit.fill,)),
                ),
        ),
        BackdropFilter(
          filter: ui.ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5
          ),
          child: Container(
            padding: EdgeInsets.only(top: 100,left: 20,right: 20),
            child: Center(
              child: Column(
                children: [
                  Hero(
                    tag: 'tag-$image+1',
                    child: Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,color: Colors.blue),
                    ),
                  ),
                  SizedBox(height: 50),
                  Text('Even though headaches are a less well-known symptom of COVID-19, they are one of the earliest signs of the disease and more common than the ‘classic’ symptoms of cough, fever and loss of smell (anosmia).  It’s important to remember that headaches are very common, especially as many of us are staring at screens for so long each day. So although many people with COVID-19 experience headaches, most people with a headache will not have COVID-19.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,color: Colors.black),),
                ],
              ),
            ),
          ),
        )
          ],
        )
      ),
    );
  }
}