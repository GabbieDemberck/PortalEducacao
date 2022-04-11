import 'package:educacao_portal/screen/aluno_quadro_de_aulas.dart';
import 'package:educacao_portal/screen/home/widgets/menu_lateral.dart';
import 'package:educacao_portal/screen/home/widgets/menu_row_widget.dart';
import 'package:educacao_portal/screen/widgets/unidade_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'widgets/menu_aluno_buttons.dart';

// ignore: must_be_immutable, camel_case_types
class Home_Page extends StatelessWidget {
  String aluno = 'Gabrielle Cristina Soares Demberck';
  Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Portal do aluno',
          ),
        ),
        drawer: const MenuLateral(),
        drawerScrimColor: Colors.white60,
        body: Column(
          children: [
            Unidade_Search(),
            Container(
              height: MediaQuery.of(context).size.height * 10 / 100,
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Seja Bem-Vindo(a)!',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          aluno,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.indigo),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Color(0XFFEEEEEE),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              width: MediaQuery.of(context).size.width * 95 / 100,
              height: MediaQuery.of(context).size.height * 72 / 100,
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(30, 20, 0, 20),
                    child: Text(
                      'Menu do aluno',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Menu_Aluno_Buttons(
                    text_button: 'Quadro De Aluas',
                    icon: Icons.note,
                    text_button2: 'Calendário Escolar',
                    icon2: Icons.calendar_today,
                  ),
                  Menu_Aluno_Buttons(
                    text_button: 'Label do Menu',
                    icon: Icons.disabled_by_default,
                    text_button2: 'Label do Menu',
                    icon2: Icons.disabled_by_default,
                  ),
                  Menu_Aluno_Buttons(
                    text_button: 'Label do Menu',
                    icon: Icons.disabled_by_default,
                    text_button2: 'Label do Menu',
                    icon2: Icons.disabled_by_default,
                  ),
                  Menu_Aluno_Buttons(
                    text_button: 'Label do Menu',
                    icon: Icons.disabled_by_default,
                    text_button2: 'Label do Menu',
                    icon2: Icons.disabled_by_default,
                  ),
                  Menu_Aluno_Buttons(
                    text_button: 'Label do Menu',
                    icon: Icons.disabled_by_default,
                    text_button2: 'Label do Menu',
                    icon2: Icons.disabled_by_default,
                  ),
                  Menu_Aluno_Buttons(
                    text_button: 'Label do Menu',
                    icon: Icons.disabled_by_default,
                    text_button2: 'Label do Menu',
                    icon2: Icons.disabled_by_default,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
