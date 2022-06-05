import 'package:educacao_portal/screen/disciplinas/disciplinas_lista.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'perfil_usuario.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  Color? colorIcon = Colors.white;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.deepPurple,
        shape: const CircularNotchedRectangle(),
        // ignore: prefer_const_literals_to_create_immutables
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PerfilUsuario()));
            },
            icon: Icon(
              Icons.person_rounded,
              color: colorIcon,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DisciplinasLista()));
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
