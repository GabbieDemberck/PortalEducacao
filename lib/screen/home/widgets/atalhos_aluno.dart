import 'dart:developer';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'atalho.dart';

class Atalhos_Aluno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double? sizeWidth = MediaQuery.of(context).size.width * 90 / 100;
    double? sizeHeight = MediaQuery.of(context).size.height * 10 / 100;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: sizeHeight,
          width: sizeWidth,
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
