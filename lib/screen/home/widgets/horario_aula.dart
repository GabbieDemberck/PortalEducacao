import 'package:educacao_portal/screen/widgets/aluno_quadro_de_aulas.dart';
import 'package:flutter/material.dart';

class HorarioAula extends StatelessWidget {
  const HorarioAula({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 16),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Horário de Aula',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            TextButton(
                onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AlunoQuadroDeAulas()))
                    },
                child: Text(
                  'Ver mais',
                  style: TextStyle(
                      color: Colors.grey[400], fontWeight: FontWeight.bold),
                ))
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 95 / 100,
          height: MediaQuery.of(context).size.height * 10 / 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 40 / 100,
                child: Card(
                  color: Colors.white,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Matemática',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '13:00 - 14:00',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              for (int i = 1; i < 6; i++)
                SizedBox(
                  width: MediaQuery.of(context).size.width * 40 / 100,
                  child: Card(
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Text(
                              'Matemática',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '00:00 - 00:00',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
