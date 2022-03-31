import 'package:chattie/constant.dart';
import 'package:chattie/theme.dart';
import 'package:chattie/widget/list_activities.dart';
import 'package:chattie/widget/list_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ChattiePage extends StatefulWidget {
  @override
  _ChattiePageState createState() => _ChattiePageState();
}

class _ChattiePageState extends State<ChattiePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text('Chattie',
                        style: GoogleFonts.poppins(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            color: primaryColor)),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          height: 32,
                          width: 32,
                          child: SvgPicture.asset('assets/ic_notif.svg'),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1583195764036-6dc248ac07d9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1055&q=80'),
                                  fit: BoxFit.cover)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 24),
                    height: 45,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 14, color: greyColor),
                          prefixIcon: Icon(
                            Icons.search,
                            color: greyColor,
                          ),
                          contentPadding: EdgeInsets.all(12),
                          fillColor: Color(0xfffcf8ec),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                              borderSide: BorderSide(color: greyColor)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24)),
                              borderSide: BorderSide(color: greyColor))),
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Activities',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: primaryColor),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: data
                                  .map((e) =>
                                      ListActivities(e, (e == data.first)))
                                  .toList(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Message',
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: primaryColor),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Column(
                                  children: dataMsg
                                      .map((e) => ListMessage(e))
                                      .toList())
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
