import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lancamentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Lançamentos'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.help,
            ),
            onPressed: () {
              showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: const Text(
                          'Informação',
                          textAlign: TextAlign.center,
                        ),
                        content: Info(),
                      ));
            },
          ),
        ],
      ),
      body: Column(children: [
        Container(
          color: Colors.indigo,
          alignment: Alignment.center,
          child: const Text(
            'Turma Maternal I "A"',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ]),
    );
  }
}

class Info extends StatelessWidget {
  dynamic styleText =
      TextStyle(color: Colors.black, fontSize: 15, decoration: null);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 10 / 100,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Icon(
              Icons.brightness_1,
              size: 13,
              color: Colors.green,
            ),
            Text(
              'Presencas',
              style: styleText,
            ),
            Row(children: [
              Icon(
                Icons.brightness_1,
                size: 13,
                color: Colors.red,
              ),
              Text(
                'Faltas',
                style: styleText,
              )
            ]),
            Row(children: [
              Icon(
                Icons.cancel,
                size: 13,
                color: Colors.grey,
              ),
              Text(
                'Transferido ',
                style: styleText,
              )
            ]),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.brightness_1_outlined,
              size: 13,
              color: Colors.grey,
            ),
            Text(
              'Sem Lancamentos',
              style: styleText,
            ),
          ]),
        ]));
  }
}
