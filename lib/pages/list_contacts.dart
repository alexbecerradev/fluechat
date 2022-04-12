import 'package:fluechat/widget/contacts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/contacts_bloc.dart';

class listContacts extends StatelessWidget {
  listContacts({Key? key}) : super(key: key);

  get primaryColor => const Color.fromARGB(255, 45, 41, 66);
  get secundaryColor => const Color.fromARGB(248, 240, 240, 240);
  bool showLoading = false;

  // ignore: unnecessary_new
  final contactsBloc = new ContactsBloc();

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
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: GoogleFonts.poppins(
                        fontSize: 14, color: secundaryColor),
                    prefixIcon: Icon(
                      Icons.search,
                      color: secundaryColor,
                    ),
                    contentPadding: const EdgeInsets.all(12),
                    fillColor: const Color(0xfffcf8ec),
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: StreamBuilder(
                  stream: contactsBloc.getContacts,
                  builder: (
                    _,
                    AsyncSnapshot snapshot,
                  ) {
                    return ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return const ListTile(
                          title: Text('contact'),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
