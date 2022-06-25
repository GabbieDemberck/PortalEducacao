import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsuarioTipoButton extends StatefulWidget {
  const UsuarioTipoButton({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _UsuarioTipoButtonState();
}

class _UsuarioTipoButtonState extends State<UsuarioTipoButton> {
  final isSelected = <bool>[false, false];
  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
        color: Colors.black.withOpacity(0.60),
        selectedColor: Colors.indigo,
        selectedBorderColor: Colors.indigo,
        fillColor: Colors.indigo.withOpacity(0.08),
        splashColor: Colors.indigo.withOpacity(0.12),
        hoverColor: Colors.indigo.withOpacity(0.04),
        borderRadius: BorderRadius.circular(4.0),
        constraints: BoxConstraints(minHeight: 36.0),
        children: [
          Container(
            width: 90,
            height: 20,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Image(
                    image: AssetImage(
                      'iconsBase/icons8-empresaria-100.png',
                    ),
                    width: 20,
                    height: 20,
                  ),
                  Text('Aluno')
                ]),
          ),
          Container(
            width: 90,
            height: 20,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('Professor'),
                  Image(
                    image: AssetImage(
                      'iconsBase/icons8-homem-estudante-100.png',
                    ),
                    width: 20,
                    height: 20,
                  ),
                ]),
          ),
        ],
        isSelected: isSelected,
        onPressed: (index) {
          setState(() {
            if (index == isSelected.length - 1) {
              isSelected[index - 1] = false;
            } else {
              isSelected[index + 1] = false;
            }

            isSelected[index] = !isSelected[index];
          });
        });
  }
}
