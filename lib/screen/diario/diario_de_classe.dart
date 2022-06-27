import 'package:flutter/material.dart';

import '../Lancamentos/lancamentos.dart';
import 'widgets/diario_opcoes.dart';

class DiarioDeClasse extends StatelessWidget {
  const DiarioDeClasse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double imageSize = MediaQuery.of(context).size.height * 30 / 100;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Diário de Classe'),
          backgroundColor: Colors.indigo,
        ),
        body: SafeArea(
          child: Column(children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/iconsBase/readingbook.png',
                width: imageSize,
                height: imageSize,
              ),
            ),
            const Text(
              'Minhas Turmas',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 50 / 100,
              child: ListView(children: [
                CardTurma(
                    turmaNome: 'MATERNAL I "A"',
                    unidadeEscolar: 'ESCOLA MUNICIPAL ARTE DE APRENDER',
                    turno: 'Turno Matutino',
                    emAndamento: true),
                CardTurma(
                    turmaNome: 'MATERNAL I "B"',
                    unidadeEscolar: 'ESCOLA MUNICIPAL ARTE DE APRENDER',
                    turno: 'Turno Vespertino',
                    emAndamento: true),
                CardTurma(
                    turmaNome: 'MATERNAL II "B"',
                    unidadeEscolar: 'ESCOLA MUNICIPAL ARTE DE APRENDER',
                    turno: 'Turno Vespertino',
                    emAndamento: false)
              ]),
            )
          ]),
        ));
  }
}

class CardTurma extends StatelessWidget {
  late String turmaNome;
  late String unidadeEscolar;
  late String turno;
  late bool emAndamento;

  CardTurma(
      {Key? key,
      required this.turmaNome,
      required this.turno,
      required this.unidadeEscolar,
      required this.emAndamento})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Lancamentos())),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              turmaNome,
              style: const TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              turno,
              style: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              unidadeEscolar,
              style: TextStyle(fontSize: 12),
            ),
            WidGetStatus(
              emAndamento: emAndamento,
            )
          ],
        ),
      ),
    );
  }
}

class WidGetStatus extends StatelessWidget {
  late bool emAndamento;
  WidGetStatus({required this.emAndamento});
  @override
  Widget build(BuildContext context) {
    if (emAndamento) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.pending_actions_outlined,
            color: Colors.green,
          ),
          Text('Atribuição em Andamento',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              )),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.assignment_late_rounded,
            color: Colors.red,
          ),
          Text('Atribuição Finalizada',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              )),
        ],
      );
    }
    ;
  }
}
