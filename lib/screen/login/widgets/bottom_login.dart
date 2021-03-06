import 'package:educacao_portal/screen/home/home_page.dart';
import 'package:flutter/material.dart';

class BottomLogin extends StatefulWidget {
  const BottomLogin({Key? key}) : super(key: key);

  @override
  State<BottomLogin> createState() => _BottomLoginState();
}

final ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: const TextStyle(
  fontSize: 14,
));

class _BottomLoginState extends State<BottomLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 40 / 100,
      color: Colors.white,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
          child: TextField(
            obscureText: false,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  borderSide: BorderSide(color: Colors.black, width: 1.0)),
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
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  borderSide: BorderSide(color: Colors.black, width: 1.0)),
              labelText: 'Senha',
              hintText: 'Sua senha',
            ),
          ),
        ),
        TextButton(
          child: const Text('Esqueci minha senha'),
          onPressed: () => {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()))
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.indigo,
            ),
            onPressed: () => {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()))
            },
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 25 / 100,
                height: 40,
                child: const Center(
                  child: Text(
                    'Acessar',
                    style: TextStyle(fontSize: 18),
                  ),
                )),
          ),
        ),
      ]),
    );
  }
}
