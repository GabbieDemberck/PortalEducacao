import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Atalho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.white.withOpacity(0.1)),
        child: Container(
          height: 30,
          width: 30,
          child: Image.asset(
            'assets/icons_base/icons8-clock-100.png',
          ),
        ));
  }
}
