import 'package:educacao_portal/screen/widgets/foto_usuario.dart';
import 'package:flutter/material.dart';

class UsuarioPerfil extends StatelessWidget {
  const UsuarioPerfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Perfil'),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 90 / 100,
          height: MediaQuery.of(context).size.height * 70 / 100,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 27, 27, 77),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              const FotoUsuario(),
              UsuarioTextField(
                placeHolder: 'Nome',
                obscureText: false,
              ),
              UsuarioTextField(
                placeHolder: 'login',
                obscureText: false,
              ),
              UsuarioTextField(
                placeHolder: 'Senha',
                obscureText: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UsuarioTextField extends StatelessWidget {
  late String placeHolder;
  late bool obscureText;
  UsuarioTextField(
      {Key? key, required this.placeHolder, required this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.white),
          hintText: placeHolder,
        ),
      ),
    );
  }
}
