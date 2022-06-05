import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnidadesList extends StatelessWidget {
  final String unidadeNome;

  const UnidadesList({Key? key, required this.unidadeNome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(unidadeNome),
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
