import 'package:educacao_portal/screen/home/home_page.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Portal do Aluno'),
        centerTitle: true,
        leading: Row(children: [
          IconButton(onPressed: () => {}, icon: const Icon(Icons.ac_unit)),
        ]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [const BodyLogin()],
      ),
    );
  }
}

class BodyLogin extends StatefulWidget {
  const BodyLogin({Key? key}) : super(key: key);

  @override
  State<BodyLogin> createState() => _BodyLoginState();
}

final ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: const TextStyle(
  fontSize: 14,
));

class _BodyLoginState extends State<BodyLogin> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Icon(
              Icons.school,
              size: 100,
              color: Colors.grey,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(50, 5, 50, 2),
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                labelText: 'Login',
                hintText: 'Seu login: CPF',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(50, 2, 50, 0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                hintText: 'Sua senha',
              ),
            ),
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(50, 2, 50, 0),
                child: Text(
                  'Esqueci minha senha',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigo,
                  ),
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home_Page()))
                  },
                  child: const SizedBox(
                      width: 140,
                      height: 40,
                      child: Center(
                        child: Text(
                          'Acessar',
                          style: TextStyle(fontSize: 18),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
