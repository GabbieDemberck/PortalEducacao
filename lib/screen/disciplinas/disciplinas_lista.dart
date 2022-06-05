import 'package:educacao_portal/screen/disciplinas/widgets/disciplinas_card.dart';
import 'package:educacao_portal/screen/home/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/disciplina.dart';

class Disciplinas_Lista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Minhas Disciplinas',
          style: TextStyle(
              color: Colors.grey.shade600, fontWeight: FontWeight.bold),
        ),
        leading: BackButton(
          color: Colors.grey,
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
              Disciplinas_Card(
                materia_nome: 'Química',
                materia_cor: Colors.deepPurple.shade400,
                atividades_feitas: 1,
                atividades_lancadas: 10,
              ),
              Disciplinas_Card(
                materia_nome: 'Matematica',
                materia_cor: Colors.deepPurple.shade400,
                atividades_feitas: 0,
                atividades_lancadas: 15,
              ),
              Disciplinas_Card(
                materia_nome: 'Língua Portuguesa',
                materia_cor: Colors.deepPurple.shade400,
                atividades_feitas: 10,
                atividades_lancadas: 30,
              ),
              Disciplinas_Card(
                materia_nome: 'Física',
                materia_cor: Colors.deepPurple.shade400,
                atividades_feitas: 10,
                atividades_lancadas: 10,
              ),
              Disciplinas_Card(
                materia_nome: 'Filosofia',
                materia_cor: Colors.deepPurple.shade400,
                atividades_feitas: 0,
                atividades_lancadas: 31,
              ),
              Disciplinas_Card(
                materia_nome: 'Sociologia',
                materia_cor: Colors.deepPurple.shade400,
                atividades_feitas: 1,
                atividades_lancadas: 1,
              ),
              Disciplinas_Card(
                materia_nome: 'Ingles',
                materia_cor: Colors.deepPurple.shade400,
                atividades_feitas: 0,
                atividades_lancadas: 4,
              ),
              Disciplinas_Card(
                materia_nome: 'Espanhol',
                materia_cor: Colors.deepPurple.shade400,
                atividades_feitas: 0,
                atividades_lancadas: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
