import 'package:educacao_portal/screen/home/widgets/atalhos_aluno.dart';
import 'package:flutter/material.dart';
import '../../widgets/foto_usuario.dart';
import 'dart:math' as math;

class CabecalhoAluno extends StatelessWidget {
  final String aluno = 'Gabrielle Cristina Soares Demberck';
  const CabecalhoAluno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? sizeWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 25, right: 10),
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
                    width: MediaQuery.of(context).size.width * 50 / 100,
                    child: Text(
                      aluno + ' !',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Atalhos(),
        ],
      ),
    );
  }
}

class Atalhos extends StatefulWidget {
  const Atalhos({Key? key}) : super(key: key);

  @override
  _AtalhosState createState() => _AtalhosState();
}

class _AtalhosState extends State<Atalhos> {
  var isVisible = false;
  double rotation = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        TextButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
                if (isVisible) {
                  rotation = 90 * math.pi / 180;
                } else {
                  rotation = 0;
                }
              });
            },
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25.0),
                  child: Text(
                    'Atalhos',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: rotation,
                  child: const IconButton(
                    icon: Icon(
                      Icons.chevron_right_sharp,
                      color: Colors.white,
                    ),
                    onPressed: null,
                  ),
                ),
              ],
            )),
        Visibility(visible: isVisible, child: AtalhosAluno()),
      ],
    ));
  }
}
