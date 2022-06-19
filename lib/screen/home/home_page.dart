import 'package:educacao_portal/screen/home/widgets/bottom_navigation.dart';
import 'package:educacao_portal/screen/home/widgets/cabecalho_aluno.dart';
import 'package:educacao_portal/screen/home/widgets/horario_aula.dart';
import 'package:flutter/material.dart';
import 'widgets/menu_atividades.dart';

// ignore: must_be_immutable, camel_case_types
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
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
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
              child: const Expanded(child: CabecalhoAluno()),
            ),
            const HorarioAula(),
            const MenuAtividades(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
