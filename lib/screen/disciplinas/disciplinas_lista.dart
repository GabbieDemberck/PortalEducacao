import 'package:educacao_portal/screen/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/disciplina.dart';

class Disciplinas_Lista extends StatelessWidget {
  Disciplina disciplina =
      Disciplina(nome: 'Matemática', nomeProfessor: 'Felícia Feliz Pinto');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home_Page())),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Card(
                child: Container(
                  color: Colors.blue,
                  child: ListTile(
                    title: Text('Matemática'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
