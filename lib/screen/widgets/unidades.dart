import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Unidades_List extends StatelessWidget {
  final String unidade_nome;

  const Unidades_List({Key? key, required this.unidade_nome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(unidade_nome),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.edit,
              size: 20.0,
              color: Colors.brown[900],
            ),
            onPressed: () {
              //   _onDeleteItemPressed(index);
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.calendar_today,
              size: 20.0,
              color: Colors.red,
            ),
            onPressed: () {
              //   _onDeleteItemPressed(index);
            },
          ),
        ],
      ),
    );
  }
}
