// ignore_for_file: deprecated_member_use
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluechat/pages/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../verify_code.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  get primaryColor => const Color.fromARGB(255, 45, 41, 66);
  get greenColor => const Color.fromARGB(200, 14, 172, 0);
  get greyColor => const Color.fromARGB(200, 114, 114, 114);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  late final String verificationId;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool showLoading = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  TextEditingController phoneController = TextEditingController();

  //
  //
  //  //pagina index
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryColor,
      body: SizedBox(
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
              child: SizedBox(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'fluechat',
                      style: GoogleFonts.poppins(
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.network(
                          'https://assets3.lottiefiles.com/packages/lf20_fdqedaer.json',
                          width: 300,
                          height: 300,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 250,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 80, left: 50, right: 50),
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        child: TextField(
                          controller: phoneController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            color: const Color.fromARGB(255, 4, 55, 71),
                          ),
                          decoration: InputDecoration(
                            hintText: 'Example: +542477303030',
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Sign in with your phone number',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: SizedBox(
                      height: 50,
                      width: 300,
                      child: FlatButton(
                        height: 100,
                        minWidth: 100,
                        onPressed: () async {
                          setState(() {
                            showLoading = true;
                          });
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  OTPScreen(phoneController.text),
                            ),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: primaryColor,
                        child: const Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
