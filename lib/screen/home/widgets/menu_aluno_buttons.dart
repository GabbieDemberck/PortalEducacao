import 'package:educacao_portal/screen/widgets/aluno_quadro_de_aulas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuAlunoButtons extends StatelessWidget {
  final String textButton;
  final IconData icon;
  final String textButton2;
  final IconData icon2;

  const MenuAlunoButtons(
      {Key? key,
      required this.textButton,
      required this.icon,
      required this.textButton2,
      required this.icon2})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            child: Container(
                width: MediaQuery.of(context).size.width * 30 / 100,
                height: 50,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      icon,
                      size: 10,
                      color: const Color.fromRGBO(95, 137, 255, 0.7),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(textButton),
                    ),
                  ],
                )),
            onPressed: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AlunoQuadroDeAulas()))
            },
          ),
          ElevatedButton(
            child: Container(
                width: MediaQuery.of(context).size.width * 30 / 100,
                height: 150,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      icon2,
                      size: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(textButton2),
                    ),
                  ],
                )),
            onPressed: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AlunoQuadroDeAulas()))
            },
          ),
        ],
      ),
    );
  }
}
