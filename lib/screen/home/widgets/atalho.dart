import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Atalho extends StatelessWidget {
  late IconData icon;
  Atalho({Key? key, required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double? size = MediaQuery.of(context).size.width * 15 / 100;
    return Container(
        alignment: Alignment.center,
        width: size,
        height: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.black.withOpacity(0.2)),
        child: Icon(
          icon,
          size: MediaQuery.of(context).size.width * 6 / 100,
          color: Colors.white,
        ));
  }
}
