import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'unidades.dart';

class Unidade_Lista extends StatefulWidget {
  @override
  _Unidade_Lista_State createState() => _Unidade_Lista_State();
}

class _Unidade_Lista_State extends State<Unidade_Lista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista De Unidades')),
      body: Column(
        children: [
          TextField(),
          Container(
            height: MediaQuery.of(context).size.height * 80 / 100,
            child: ListView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Unidades_List(
                    unidade_nome: 'ESCOLA MUNICIPAL SEMENTE DO SABER'),
                Unidades_List(
                    unidade_nome: 'ESCOLA MUNICIPAL NILO PROCÓPIO PEÇANHA'),
                Unidades_List(
                    unidade_nome:
                        'ESCOLA MUNICIPAL PROFESSORA SÔNIA MARIA FALEIRO'),
                Unidades_List(
                    unidade_nome:
                        'ESCOLA MUNICIPAL VICENTE FRANCISCO DA SILVA'),
                Unidades_List(
                    unidade_nome: 'ESCOLA MUNICIPAL JARDIM DAS FLORES'),
                Unidades_List(unidade_nome: 'ESCOLA MUNICIPAL MENINO JESUS'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
