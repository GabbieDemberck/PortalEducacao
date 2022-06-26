import 'package:educacao_portal/screen/home/home_page.dart';
import 'package:flutter/material.dart';

import 'widgets/disciplinas_card.dart';

class DisciplinasLista extends StatelessWidget {
  const DisciplinasLista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Minhas Disciplinas',
          style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
        ),
        leading: BackButton(
          color: Colors.grey,
        ),
      ),
      body: Container(
        width: 400,
        height: 700,
        child: ListView(
          children: const [
            DisciplinasCard(
              materiaNome: 'Química',
              materiaCor: Colors.indigo,
              atividadesFeitas: 1,
              atividadesLancadas: 10,
            ),
            DisciplinasCard(
              materiaNome: 'Matematica',
              materiaCor: Colors.indigo,
              atividadesFeitas: 0,
              atividadesLancadas: 15,
            ),
            DisciplinasCard(
              materiaNome: 'Língua Portuguesa',
              materiaCor: Colors.indigo,
              atividadesFeitas: 10,
              atividadesLancadas: 30,
            ),
            DisciplinasCard(
              materiaNome: 'Física',
              materiaCor: Colors.indigo,
              atividadesFeitas: 10,
              atividadesLancadas: 10,
            ),
            DisciplinasCard(
              materiaNome: 'Filosofia',
              materiaCor: Colors.indigo,
              atividadesFeitas: 0,
              atividadesLancadas: 31,
            ),
            DisciplinasCard(
              materiaNome: 'Sociologia',
              materiaCor: Colors.indigo,
              atividadesFeitas: 1,
              atividadesLancadas: 1,
            ),
            DisciplinasCard(
              materiaNome: 'Ingles',
              materiaCor: Colors.indigo,
              atividadesFeitas: 0,
              atividadesLancadas: 4,
            ),
            DisciplinasCard(
              materiaNome: 'Espanhol',
              materiaCor: Colors.indigo,
              atividadesFeitas: 0,
              atividadesLancadas: 5,
            ),
          ],
        ),
      ),
    );
  }
}
