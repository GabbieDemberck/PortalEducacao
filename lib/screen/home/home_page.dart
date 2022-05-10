import 'package:educacao_portal/screen/home/widgets/horario_aula.dart';
import 'package:educacao_portal/screen/home/widgets/menu_lateral.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'widgets/atalhos_aluno.dart';
import 'widgets/cabecalho_aluno.dart';
import 'widgets/menu_atividades.dart';

// ignore: must_be_immutable, camel_case_types
class Home_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade900,
          elevation: 0,
        ),
        drawer: const MenuLateral(),
        body: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.purple.shade900,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    )),
                height: MediaQuery.of(context).size.height * 23 / 100,
                child: Cabecalho_Aluno()),
            Horario_Aula(),
            Menu_Atividades(),
          ],
        ));
  }
}
