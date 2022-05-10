import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'atalhos_aluno.dart';

class Cabecalho_Aluno extends StatelessWidget {
  String aluno = 'Gabrielle Cristina Soares Demberck';
  Cabecalho_Aluno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 10),
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
                  width: MediaQuery.of(context).size.width * 70 / 100,
                  child: Text(
                    aluno + ' !',
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ],
        ),
        Atalhos_Aluno()
      ],
    );
  }
}

class FotoUsuario extends StatelessWidget {
  bool possui_foto = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      child: IconButton(
        icon: Icon(
          Icons.add_a_photo,
          color: Colors.grey[400],
        ),
        onPressed: () {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Selecione'),
              content: Container(
                width: MediaQuery.of(context).size.width * 90 / 100,
                height: MediaQuery.of(context).size.height * 50 / 100,
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancelar'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
