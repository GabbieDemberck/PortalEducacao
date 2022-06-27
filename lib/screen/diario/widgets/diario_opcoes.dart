import 'package:flutter/material.dart';
import 'dart:math' as math;

class DiarioOpcoes extends StatefulWidget {
  const DiarioOpcoes({Key? key}) : super(key: key);

  @override
  _DiarioOpcoesState createState() => _DiarioOpcoesState();
}

class _DiarioOpcoesState extends State<DiarioOpcoes> {
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
        Visibility(visible: isVisible, child: const Opcoes()),
      ],
    ));
  }
}

class Opcoes extends StatelessWidget {
  const Opcoes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: TextButton.icon(
        icon: Icon(Icons.app_registration_sharp),
        label: Text('Lançamentos'),
        onPressed: () {},
      ),
    );
  }
}
