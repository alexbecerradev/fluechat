// ignore_for_file: deprecated_member_use

import 'package:fluechat/pages/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  get primaryColor => const Color.fromARGB(255, 45, 41, 66);
  get greenColor => const Color.fromARGB(200, 14, 172, 0);
  get greyColor => const Color.fromARGB(200, 114, 114, 114);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  final TextEditingController smscontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              height: 200,
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
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 50, left: 30, right: 30),
                        child: DropdownButton(
                          items: null,
                          onChanged: null,
                          hint: const Text('+54'),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        child: TextField(
                          controller: smscontroller,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                            color: const Color.fromARGB(255, 4, 55, 71),
                          ),
                          decoration: InputDecoration(
                            hintText: 'Sign in with your number phone',
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 50,
                      width: 300,
                      child: FlatButton(
                        height: 100,
                        minWidth: 100,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const ChatPage())));
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
