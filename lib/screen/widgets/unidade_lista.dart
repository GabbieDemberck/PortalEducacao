import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'unidades.dart';

class UnidadeLista extends StatefulWidget {
  const UnidadeLista({Key? key}) : super(key: key);

  @override
  _UnidadeListaState createState() => _UnidadeListaState();
}

class _UnidadeListaState extends State<UnidadeLista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista De Unidades')),
      body: Column(
        children: [
          const TextField(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 80 / 100,
            child: ListView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const UnidadesList(
                    unidadeNome: 'ESCOLA MUNICIPAL SEMENTE DO SABER'),
                const UnidadesList(
                    unidadeNome: 'ESCOLA MUNICIPAL NILO PROCÓPIO PEÇANHA'),
                const UnidadesList(
                    unidadeNome:
                        'ESCOLA MUNICIPAL PROFESSORA SÔNIA MARIA FALEIRO'),
                const UnidadesList(
                    unidadeNome: 'ESCOLA MUNICIPAL VICENTE FRANCISCO DA SILVA'),
                const UnidadesList(
                    unidadeNome: 'ESCOLA MUNICIPAL JARDIM DAS FLORES'),
                const UnidadesList(
                    unidadeNome: 'ESCOLA MUNICIPAL MENINO JESUS'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
