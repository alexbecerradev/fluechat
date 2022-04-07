import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluechat/pages/chat_page.dart';
import 'package:fluechat/pages/index.dart';
import 'package:flutter/material.dart';
import 'package:fluechat/main.dart';

import 'firebase_options.dart';

// ignore: camel_case_types
class flueHome extends StatelessWidget {
  const flueHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          final FirebaseAuth auth = FirebaseAuth.instance;
          final user = auth.currentUser;
          // ignore: unnecessary_null_comparison
          if (user != null) {
            return const ChatPage();
          } else {
            return const Index();
          }
        });
  }
}
