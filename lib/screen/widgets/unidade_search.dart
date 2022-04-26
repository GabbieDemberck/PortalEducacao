import 'package:educacao_portal/screen/widgets/unidade_lista.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Unidade_Search extends StatefulWidget {
  const Unidade_Search({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Unidades();
}

class _Unidades extends State<Unidade_Search> {
  String unidade = 'ESCOLA MUNICIPAL TESTE EXPERIMENTAL';
// SE A UNIDADE ESTIVER VAZIA ELA VIRA UM SEARCH
  @override
  Widget build(BuildContext context) {
    if (unidade == '') {
      return Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.indigo)),
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: TextButton(
              onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Unidade_Lista()))
                  },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Text('Lista de Unidades'),
                  // ignore: prefer_const_constructors
                  Icon(Icons.search),
                ],
              )));
    } else {
      return Container(
          height: 25,
          color: const Color.fromRGBO(144, 182, 22, 0.8),
          alignment: Alignment.center,
          child: Text(
            unidade,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ));
    }
  }
}
