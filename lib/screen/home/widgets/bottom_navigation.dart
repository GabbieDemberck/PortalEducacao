import 'package:educacao_portal/screen/disciplinas/disciplinas_lista.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom_Navigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Bottom_Navigation_State();
}

class _Bottom_Navigation_State extends State<Bottom_Navigation> {
  Color? colorIcon = Colors.white;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.deepPurple,
        shape: const CircularNotchedRectangle(),
        // ignore: prefer_const_literals_to_create_immutables
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person_rounded,
              color: colorIcon,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Disciplinas_Lista()));
            },
            icon: Icon(
              Icons.book_rounded,
              color: colorIcon,
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: colorIcon,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: colorIcon,
            ),
          )
        ]));
  }
}