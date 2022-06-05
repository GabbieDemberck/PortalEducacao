import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PerfilUsuario extends StatelessWidget {
  const PerfilUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Editar Perfil'),
            ListView(
              children: const [
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), label: Text('Nome')),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
