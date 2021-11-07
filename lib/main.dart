import 'package:flutter/material.dart';
import 'package:whatsapp_clone/home.dart';

const bgcolor = Color(0xFF2ac0a5);
const white_wht = Colors.white;
const black_color = Colors.black;
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext conter) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomPage(bgcolor: black_color),
    );
  }
}

