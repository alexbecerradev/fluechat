import 'package:flutter/material.dart';

class ListActivities extends StatelessWidget {
  final Map<String, dynamic> data;
  final bool isFirst;

  // ignore: use_key_in_widget_constructors
  const ListActivities(this.data, this.isFirst);

  get primaryColor => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: isFirst ? 0 : 24,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  Container(
                    height: 62,
                    width: 62,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 106, 167, 216)),
                        shape: BoxShape.circle),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 103, 172, 228),
                              width: 2),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(data['photo']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
