import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Atalho extends StatelessWidget {
  late IconData icon;
  Atalho({Key? key, required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.black.withOpacity(0.2)),
        child: Container(
          height: 30,
          width: 30,
          child: Icon(
            icon,
            size: 20,
            color: Colors.white,
          ),
        ));
  }
}
