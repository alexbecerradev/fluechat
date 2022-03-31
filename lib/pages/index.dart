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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
            Positioned.fill(
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: DropdownButton(
                          items: null,
                          onChanged: null,
                          hint: const Text('+54'),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.only(right: 70),
                          height: 50,
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
                              color: Color.fromARGB(255, 4, 55, 71),
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 90, horizontal: 90),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => ChatPage())));
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
            ),
          ],
        ),
      ),
    );
  }
}
