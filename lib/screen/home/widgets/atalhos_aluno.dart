import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'atalho.dart';

class Atalhos_Aluno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 25),
          child: Text(
            ' Atalhos',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          height: 60,
          width: MediaQuery.of(context).size.width * 90 / 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Atalho(icon: Icons.access_alarm_sharp)),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Atalho(icon: Icons.chat)),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Atalho(icon: Icons.backpack)),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Atalho(icon: Icons.receipt)),
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Atalho(icon: Icons.notifications)),
            ],
          ),
        ),
      ],
    );
  }
}
