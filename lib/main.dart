import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluechat/home.dart';
import 'package:fluechat/pages/chat_page.dart';
import 'package:fluechat/pages/index.dart';
import 'package:fluechat/verify_code.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: flueHome(),
    );
  }
}



//https://youtu.be/S7BZCnHeePM?t=441
