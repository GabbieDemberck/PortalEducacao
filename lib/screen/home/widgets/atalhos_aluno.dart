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
          padding: const EdgeInsets.only(left: 8.0, top: 10),
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
              for (int i = 0; i < 6; i++)
                Padding(padding: const EdgeInsets.all(8.0), child: Atalho()),
            ],
          ),
        ),
      ],
    );
  }
}
