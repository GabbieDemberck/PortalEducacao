import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 12,
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 10),
          color: Colors.purple.shade900,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
              const MenuTextButton(
                imagem: 'assets/icons_base/icons8-user-male-100-2.png',
                label: 'Meu Perfil',
              ),
              const MenuTextButton(
                imagem: 'assets/icons_base/icons8-contacts-100-2.png',
                label: 'Minhas Disciplinas',
              ),
              const MenuTextButton(
                imagem: 'assets/icons_base/icons8-document-100-2.png',
                label: 'Relatório Individual',
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.exit_to_app,
                      color: Colors.white,
                    ),
                  ),
                  const Text('Sair',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuTextButton extends StatelessWidget {
  final String imagem;
  final String label;

  const MenuTextButton({Key? key, required this.imagem, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 70 / 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset(
                imagem,
                width: 25,
                height: 25,
              ),
            ),
            Text(
              label,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
