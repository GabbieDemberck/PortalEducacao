import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../usuario_icones_lista.dart';
import 'atalhos_aluno.dart';
import 'foto_usuario.dart';

class Cabecalho_Aluno extends StatelessWidget {
  String aluno = 'Gabrielle Cristina Soares Demberck';
  Cabecalho_Aluno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? sizeWidth = MediaQuery.of(context).size.width;
    print(sizeWidth);
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 25, right: 10),
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
                    width: MediaQuery.of(context).size.width * 50 / 100,
                    child: Text(
                      aluno + ' !',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ],
          ),
          if (sizeWidth > 380)
            Container(
              padding: const EdgeInsets.only(left: 25, top: 10),
              alignment: Alignment.centerLeft,
              child: const Text(
                ' Atalhos',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          Atalhos_Aluno()
        ],
      ),
    );
  }
}
