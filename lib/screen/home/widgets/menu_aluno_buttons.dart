import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../aluno_quadro_de_aulas.dart';

class Menu_Aluno_Buttons extends StatelessWidget {
  final String text_button;
  final IconData icon;
  final String text_button2;
  final IconData icon2;

  Menu_Aluno_Buttons(
      {Key? key,
      required this.text_button,
      required this.icon,
      required this.text_button2,
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
                height: 150,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      icon,
                      size: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(text_button),
                    ),
                  ],
                )),
            onPressed: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Aluno_Quadro_De_Aulas()))
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
                      padding: EdgeInsets.all(8.0),
                      child: Text(text_button2),
                    ),
                  ],
                )),
            onPressed: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Aluno_Quadro_De_Aulas()))
            },
          ),
        ],
      ),
    );
  }
}
