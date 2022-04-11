import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors, camel_case_types
class Informacao_Turma extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Turma();
  }
}

class _Turma extends State<Informacao_Turma> {
  final items = [
    ' Turma: 1º Ano - PERÍODO: MATUTINO',
    'CÓDIGO: 8992',
    'TURNO: DIURNO',
    'MATRIZ: ENSINO FUNDAMENTAL > 1º ANO',
    'QUADRO DE HORAS: 45H',
    'A PARTIR DE: 15/02/2022',
  ];
  set value(Object? value) {}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            hint: const Text(
              ' Turma:1º Ano ' + '- ' + 'PERÍODO:MATUTINO',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            isExpanded: true,
            items: items.map(buildMenuItem).toList(),
            onChanged: (value) => this.value = value),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(item,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.indigo)),
      );
}
