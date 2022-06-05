import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Disciplinas_Card extends StatelessWidget {
  late String? materia_nome;
  late Color materia_cor;
  late int atividades_lancadas;
  late int atividades_feitas;

  Disciplinas_Card(
      {required this.materia_nome,
      required this.materia_cor,
      required this.atividades_feitas,
      required this.atividades_lancadas});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 15 / 100,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: _Icon_Aviso(
                  atividades_lancadas: atividades_lancadas,
                  atividades_feitas: atividades_feitas),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 70 / 100,
              height: MediaQuery.of(context).size.height,
              color: materia_cor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          child: Text(
                            materia_nome!,
                            maxLines: 1,
                            softWrap: false,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '$atividades_feitas/$atividades_lancadas',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Atividades Realizadas',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Ver mais',
                softWrap: true,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _Icon_Aviso extends StatelessWidget {
  int? atividades_feitas;
  int? atividades_lancadas;
  _Icon_Aviso({this.atividades_feitas, this.atividades_lancadas});

  @override
  Widget build(BuildContext context) {
    if (atividades_feitas == atividades_lancadas) {
      return Icon(
        Icons.check_circle_outline_sharp,
        color: Colors.green,
      );
    } else {
      return Icon(
        Icons.radio_button_unchecked_sharp,
        color: Colors.grey,
      );
    }
  }
}
