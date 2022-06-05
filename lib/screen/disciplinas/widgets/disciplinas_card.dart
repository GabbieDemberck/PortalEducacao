import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DisciplinasCard extends StatelessWidget {
  final String? materiaNome;
  final Color materiaCor;
  final int atividadesLancadas;
  final int atividadesFeitas;

  const DisciplinasCard(
      {Key? key,
      required this.materiaNome,
      required this.materiaCor,
      required this.atividadesFeitas,
      required this.atividadesLancadas})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 15 / 100,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: _IconAviso(
                  atividadesLancadas: atividadesLancadas,
                  atividadesFeitas: atividadesFeitas),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 70 / 100,
              height: MediaQuery.of(context).size.height,
              color: materiaCor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                          child: Text(
                            materiaNome!,
                            maxLines: 1,
                            softWrap: false,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '$atividadesFeitas/$atividadesLancadas',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Atividades Realizadas',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Ver mais',
                softWrap: true,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _IconAviso extends StatelessWidget {
  final int? atividadesFeitas;
  final int? atividadesLancadas;
  const _IconAviso({this.atividadesFeitas, this.atividadesLancadas});

  @override
  Widget build(BuildContext context) {
    if (atividadesFeitas == atividadesLancadas) {
      return const Icon(
        Icons.check_circle_outline_sharp,
        color: Colors.green,
      );
    } else {
      return const Icon(
        Icons.radio_button_unchecked_sharp,
        color: Colors.grey,
      );
    }
  }
}
