import 'package:fluechat/pages/chat_page.dart';
import 'package:fluechat/pages/index.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Index(),
    );
  }
}

//https://youtu.be/S7BZCnHeePM?t=441
