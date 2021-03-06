import 'package:flutter/material.dart';

import 'atalho.dart';

class AtalhosAluno extends StatelessWidget {
  const AtalhosAluno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? sizeWidth = MediaQuery.of(context).size.width * 90 / 100;
    double? sizeHeight = MediaQuery.of(context).size.height * 8 / 100;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: sizeHeight,
          width: sizeWidth,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Atalho(icon: Icons.access_alarm_sharp)),
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Atalho(icon: Icons.chat)),
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Atalho(icon: Icons.backpack)),
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Atalho(icon: Icons.receipt)),
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Atalho(icon: Icons.notifications)),
            ],
          ),
        ),
      ],
    );
  }
}
