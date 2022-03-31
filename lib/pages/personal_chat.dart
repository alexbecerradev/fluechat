import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

get primaryColor => const Color.fromARGB(255, 45, 41, 66);
get greenColor => const Color.fromARGB(200, 14, 172, 0);
get greyColor => const Color.fromARGB(200, 114, 114, 114);

class PersonalChat extends StatefulWidget {
  final Map<String, dynamic> data;

  // ignore: use_key_in_widget_constructors
  const PersonalChat(this.data);

  @override
  State<PersonalChat> createState() => _PersonalChatState();
}

class _PersonalChatState extends State<PersonalChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: primaryColor,
          ),
          Container(
            margin: const EdgeInsets.only(top: 32),
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.chevron_left,
                              color: greyColor,
                              size: 24,
                            ),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    widget.data['photo'],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              )),
                          const SizedBox(
                            width: 16,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.data['name'],
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  'Online',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 24,
                              width: 24,
                              child: const Icon(
                                Icons.call,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Container(
                              height: 24,
                              width: 24,
                              child: const Center(
                                child: Icon(
                                  Icons.video_call,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              '28/03/2022',
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: primaryColor,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: greyColor,
                                    borderRadius: const BorderRadius.only(
                                      topRight: const Radius.circular(16),
                                      topLeft: const Radius.circular(16),
                                      bottomRight: const Radius.circular(16),
                                    ),
                                  ),
                                  child: Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  '09.43AM',
                                  style: GoogleFonts.poppins(
                                      fontSize: 8,
                                      color: primaryColor.withOpacity(0.3)),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 2 +
                                      100,
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                      bottomLeft: Radius.circular(16),
                                    ),
                                  ),
                                  child: Text(
                                    'Lorem ipsum dolor sit amet.',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Icon(
                                        Icons.arrow_circle_right_rounded),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '09.45AM',
                                      style: GoogleFonts.poppins(
                                          fontSize: 8,
                                          color: primaryColor.withOpacity(0.3)),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: greyColor,
                                    borderRadius: const BorderRadius.only(
                                      topRight: const Radius.circular(16),
                                      topLeft: const Radius.circular(16),
                                      bottomRight: const Radius.circular(16),
                                    ),
                                  ),
                                  child: Text(
                                    'Lorem.',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  '09.43AM',
                                  style: GoogleFonts.poppins(
                                      fontSize: 8,
                                      color: primaryColor.withOpacity(0.3)),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 2 +
                                      100,
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(16),
                                      topRight: Radius.circular(16),
                                      bottomLeft: Radius.circular(16),
                                    ),
                                  ),
                                  child: Text(
                                    'Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Icon(
                                        Icons.arrow_circle_right_rounded),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '09.45AM',
                                      style: GoogleFonts.poppins(
                                          fontSize: 8,
                                          color: primaryColor.withOpacity(0.3)),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Container(
                        padding: const EdgeInsets.only(left: 16),
                        height: 45,
                        child: TextFormField(
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: const Color(0xff79a3b1),
                          ),
                          decoration: InputDecoration(
                            hintText: 'Type your message...',
                            hintStyle: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: const Color(0xff79a3b1),
                            ),
                            prefixIcon: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.emoji_emotions_sharp),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Icon(Icons.attach_file),
                                ],
                              ),
                            ),
                            contentPadding: const EdgeInsets.all(12),
                            filled: true,
                            fillColor: primaryColor.withOpacity(0.1),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(24)),
                                borderSide: BorderSide(
                                  color: primaryColor.withOpacity(0.1),
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                    const Radius.circular(24)),
                                borderSide: BorderSide(
                                  color: primaryColor.withOpacity(0.1),
                                )),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: primaryColor, shape: BoxShape.circle),
                        child: const Center(
                          child: SizedBox(
                            height: 25,
                            width: 25,
                            child: Icon(
                              Icons.send_outlined,
                              color: Colors.white,
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
        ],
      ),
    );
  }
}
