import 'package:flutter/material.dart';

class NotificacaoPage extends StatelessWidget {
  const NotificacaoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificações'),
      ),
      body: SingleChildScrollView(child: Card()),
    );
  }
}
