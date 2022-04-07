import 'package:flutter/material.dart';
import 'package:fluechat/verify_code.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_contacts/flutter_contacts.dart';

class listContacts extends StatefulWidget {
  const listContacts({Key? key}) : super(key: key);

  @override
  State<listContacts> createState() => _listContactsState();
}

get primaryColor => const Color.fromARGB(255, 45, 41, 66);
get secundaryColor => const Color.fromARGB(248, 240, 240, 240);
bool showLoading = false;

class _listContactsState extends State<listContacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secundaryColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40,
                    child: Text(
                      'friend(s)',
                      style: GoogleFonts.poppins(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 45, 41, 66)),
                    ),
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: TextField(
                  cursorColor: const Color.fromARGB(255, 15, 15, 15),
                  style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search,
                        color: Color.fromARGB(255, 0, 0, 0)),
                    fillColor: const Color.fromARGB(255, 0, 0, 0),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 3, color: Color.fromARGB(255, 45, 41, 66)),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
