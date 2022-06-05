import 'package:educacao_portal/screen/home/widgets/bottom_navigation.dart';
import 'package:educacao_portal/screen/home/widgets/horario_aula.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'widgets/cabecalho_aluno.dart';
import 'widgets/menu_atividades.dart';

// ignore: must_be_immutable, camel_case_types
class Home_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade900,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.notifications,
                size: 18,
              ),
              onPressed: () {},
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              size: 18,
            ),
            onPressed: () {},
          ),
          IconButton(
            tooltip: 'Exit',
            icon: const Icon(
              Icons.exit_to_app,
              size: 18,
            ),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      //drawer: const MenuLateral(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.purple.shade900,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    )),
                height: MediaQuery.of(context).size.height * 25 / 100,
                child: Cabecalho_Aluno()),
            Horario_Aula(),
            Menu_Atividades(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Bottom_Navigation(),
    );
  }
}
