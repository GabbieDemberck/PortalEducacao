import 'package:educacao_portal/screen/disciplinas/widgets/disciplinas_card.dart';
import 'package:educacao_portal/screen/home/home_page.dart';
import 'package:flutter/material.dart';

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
          style: TextStyle(
              color: Colors.grey.shade600, fontWeight: FontWeight.bold),
        ),
        leading: BackButton(
          color: Colors.grey,
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage())),
        ),
      ),
      body: Column(children: [
        Expanded(
          child: ListView(
            children: [
              DisciplinasCard(
                materiaNome: 'Química',
                materiaCor: Colors.deepPurple.shade400,
                atividadesFeitas: 1,
                atividadesLancadas: 10,
              ),
              DisciplinasCard(
                materiaNome: 'Matematica',
                materiaCor: Colors.deepPurple.shade400,
                atividadesFeitas: 0,
                atividadesLancadas: 15,
              ),
              DisciplinasCard(
                materiaNome: 'Língua Portuguesa',
                materiaCor: Colors.deepPurple.shade400,
                atividadesFeitas: 10,
                atividadesLancadas: 30,
              ),
              DisciplinasCard(
                materiaNome: 'Física',
                materiaCor: Colors.deepPurple.shade400,
                atividadesFeitas: 10,
                atividadesLancadas: 10,
              ),
              DisciplinasCard(
                materiaNome: 'Filosofia',
                materiaCor: Colors.deepPurple.shade400,
                atividadesFeitas: 0,
                atividadesLancadas: 31,
              ),
              DisciplinasCard(
                materiaNome: 'Sociologia',
                materiaCor: Colors.deepPurple.shade400,
                atividadesFeitas: 1,
                atividadesLancadas: 1,
              ),
              DisciplinasCard(
                materiaNome: 'Ingles',
                materiaCor: Colors.deepPurple.shade400,
                atividadesFeitas: 0,
                atividadesLancadas: 4,
              ),
              DisciplinasCard(
                materiaNome: 'Espanhol',
                materiaCor: Colors.deepPurple.shade400,
                atividadesFeitas: 0,
                atividadesLancadas: 5,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
