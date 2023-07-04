// ignore: non_constant_identifier_names 
 import 'package:flutter/material.dart';


// ignore: non_constant_identifier_names
final GreenDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.blueAccent,
    boxShadow: const[
      BoxShadow(color: Colors.blueAccent, spreadRadius: 3),
    ],
  );



    // ignore: non_constant_identifier_names
    final WhiteDecorarion =  BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
    boxShadow: const[
      BoxShadow(color: Colors.white, spreadRadius: 3),
    ],
  );



    // ignore: constant_identifier_names
    const WhiteTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 20,
       fontWeight: FontWeight.bold
       );



      // ignore: constant_identifier_names
      const GreenTextStyle = TextStyle(
      color: Colors.blueAccent,
      fontSize: 20,
       fontWeight: FontWeight.bold
       );




  const textFieldDecoration =  InputDecoration(
    
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            isCollapsed: true,

                            );