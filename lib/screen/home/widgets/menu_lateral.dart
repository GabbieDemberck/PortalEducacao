import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10,
      child: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_literals_to_create_immutables, prefer_const_constructors
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.account_tree),
                  ),
                  const Text('Meus Dados')
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.account_tree),
                  ),
                  const Text('Minhas Disciplinas')
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.account_tree),
                  ),
                  const Text('Relatório Individual')
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.account_tree),
                  ),
                  const Text('Sair')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
