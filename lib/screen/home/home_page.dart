import 'package:educacao_portal/screen/home/widgets/horario_aula.dart';
import 'package:educacao_portal/screen/home/widgets/menu_lateral.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'widgets/atalhos_aluno.dart';
import 'widgets/menu_atividades.dart';

// ignore: must_be_immutable, camel_case_types
class Home_Page extends StatelessWidget {
  String aluno = 'Gabrielle Cristina Soares Demberck';
  Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade900,
          elevation: 0,
        ),
        drawer: const MenuLateral(),
        drawerScrimColor: Colors.indigo,
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.purple.shade900,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  )),
              height: MediaQuery.of(context).size.height * 23 / 100,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25, right: 10),
                        child: FotoUsuario(),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Olá,',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 70 / 100,
                            child: Text(
                              aluno + ' !',
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Atalhos_Aluno()
                ],
              ),
            ),
            Horario_Aula(),
            Menu_Atividades(),
          ],
        ));
  }
}

class FotoUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
    );
  }
}
