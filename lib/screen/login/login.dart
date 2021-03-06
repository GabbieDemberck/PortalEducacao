import 'package:flutter/material.dart';

import 'widgets/bottom_login.dart';
import 'widgets/usuario_tipo_button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidthSize = MediaQuery.of(context).size.width;
    double screenHeightSize = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.indigo,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                width: screenWidthSize,
                height: screenHeightSize * 50 / 100,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(120),
                    ),
                    color: Colors.indigo,
                  ),
                  width: screenWidthSize,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: const AssetImage('assets/iconsBase/diploma.png'),
                        width: screenHeightSize * 30 / 100,
                        height: screenHeightSize * 30 / 100,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Portal Educação',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: screenHeightSize * 10 / 100,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(150),
                  ),
                  color: Colors.white,
                ),
                child: const UsuarioTipoButton(),
              ),
              const BottomLogin()
            ],
          ),
        ));
  }
}
