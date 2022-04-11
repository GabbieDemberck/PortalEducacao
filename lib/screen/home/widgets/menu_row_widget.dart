// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu_Row_Widget extends StatelessWidget {
  String titulo;
  IconData inone;
  Widget link;

  Menu_Row_Widget(this.titulo, this.inone, this.link);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      ElevatedButton(
        child: Container(
            width: MediaQuery.of(context).size.width * 30 / 100,
            height: 150,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(
                  inone,
                  size: 50,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(' Quadro De Aulas'),
                ),
              ],
            )),
        onPressed: () => {
          Navigator.push(context, MaterialPageRoute(builder: (context) => link))
        },
      ),
      ElevatedButton(
        child: Container(
            width: MediaQuery.of(context).size.width * 30 / 100,
            height: 150,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Icon(
                  Icons.schedule_rounded,
                  size: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(titulo),
                ),
              ],
            )),
        onPressed: () => {
          Navigator.push(context, MaterialPageRoute(builder: (context) => link))
        },
      )
    ]);
  }
}
