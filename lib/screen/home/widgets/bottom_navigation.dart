import 'package:educacao_portal/screen/disciplinas/disciplinas_lista.dart';
import 'package:flutter/material.dart';

import '../../diario/diario_de_classe.dart';
import '../../usuario_perfil/usuario_perfil.dart';
import '../../widgets/unidade_lista.dart';

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
        color: Colors.indigo,
        shape: const CircularNotchedRectangle(),
        // ignore: prefer_const_literals_to_create_immutables
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UsuarioPerfil()));
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
              Icons.ballot,
              color: colorIcon,
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UnidadeLista()));
            },
            icon: Icon(
              Icons.account_balance_outlined,
              color: colorIcon,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DiarioDeClasse()));
            },
            icon: Icon(
              Icons.book_rounded,
              color: colorIcon,
            ),
          )
        ]));
  }
}
