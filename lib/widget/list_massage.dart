// ignore: unused_import
import 'package:fluechat/pages/constant.dart';
import 'package:fluechat/pages/personal_chat.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListMessage extends StatelessWidget {
  final Map<String, dynamic> data;

  // ignore: prefer_const_constructors_in_immutables
  ListMessage(this.data, {Key? key}) : super(key: key);

  get greenColor => const Color.fromARGB(200, 14, 172, 0);
  get greyColor => const Color.fromARGB(200, 114, 114, 114);
  get primaryColor => const Color.fromARGB(255, 45, 41, 66);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PersonalChat(data)));
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(data['photo']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 5,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 1),
                            color: (data['online']) ? greenColor : greyColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['name'],
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: const Color.fromARGB(255, 45, 41, 66),
                                fontWeight: (data['unread'])
                                    ? FontWeight.w500
                                    : FontWeight.w300),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2 + 70,
                            child: Text(
                              data['last_msg'],
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: (data['unread'])
                                    ? primaryColor
                                    : primaryColor.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Text(
                  data['last_msg_dtm'],
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                (data['unread'])
                    ? Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '1',
                            style: GoogleFonts.poppins(
                                fontSize: 8, color: Colors.white),
                          ),
                        ),
                      )
                    : const SizedBox()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
