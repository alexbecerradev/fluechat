import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Activities extends StatelessWidget {
  final Map<String, dynamic> data;
  final bool isFirst;

  const Activities(this.data, this.isFirst);

  get primaryColor => const Color.fromARGB(255, 45, 41, 66);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: isFirst ? 0 : 20,
      ),
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                height: 90,
                width: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                    shape: BoxShape.rectangle),
              ),
              Container(
                height: 130,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: primaryColor),
                    shape: BoxShape.rectangle),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 130,
                    width: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: primaryColor, width: 2),
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: NetworkImage(data['storie']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(
            data['name'],
            style:
                GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
