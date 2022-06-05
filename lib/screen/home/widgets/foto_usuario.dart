import 'package:flutter/material.dart';

class FotoUsuario extends StatefulWidget {
  const FotoUsuario({Key? key}) : super(key: key);

  @override
  State<FotoUsuario> createState() => _FotoUsuarioState();
}

class _FotoUsuarioState extends State<FotoUsuario> {
  List usuarioIcones = [
    'icons8-x-men-100.png',
    'icons8-anonymous-mask-100.png',
    'icons8-arryn-house-100.png',
    'icons8-avatar-100.png',
    'icons8-avengers-100.png',
    'icons8-batman-100.png',
    'icons8-batman-logo-100.png',
    'icons8-beast-100.png',
    'icons8-brutus-100.png',
    'icons8-captain-america-100.png',
    'icons8-cheburashka-100.png',
    'icons8-chucky-100.png',
    'icons8-cyclops-marvel-100.png',
    'icons8-dare-devil-100.png',
    'icons8-empire-100.png',
    'icons8-fantastic-four-100.png',
    'icons8-finn-100.png',
    'icons8-freddy-krueger-100.png',
    'icons8-fsociety-mask-100.png',
    'icons8-futurama-bender-100.png',
    'icons8-gambit-100.png',
    'icons8-genie-100.png',
    'icons8-genie-lamp-100.png',
    'icons8-gizmo-100.png',
    'icons8-green-lantern-100.png',
    'icons8-grey-100.png',
    'icons8-harry-potter-100.png',
    'icons8-harry-potter-100-2.png',
    'icons8-homer-simpson-100.png',
    'icons8-hulk-100.png',
    'icons8-human-head-100.png',
    'icons8-iron-man-100.png',
    'icons8-jake-100.png',
    'icons8-jason-voorhees-100.png',
    'icons8-jean-grey-100.png',
    'icons8-knight-helmet-100.png',
    'icons8-lightsaber-100.png',
    'icons8-magneto-100.png',
    'icons8-mongrol-100.png',
    'icons8-mummy-100.png',
    'icons8-mystique-100.png',
    'icons8-naruto-100.png',
    'icons8-neo-100.png',
    'icons8-ninja-turtle-100.png',
    'icons8-one-ring-100.png',
    'icons8-pixar-lamp-100.png',
    'icons8-pixar-lamp-100-2.png',
    'icons8-popeye-100.png',
    'icons8-predator-100.png',
    'icons8-professor-x-100.png',
    'icons8-r2-d2-100.png',
    'icons8-rebel-100.png',
    'icons8-rick-sanchez-100.png',
    'icons8-scream-100.png',
    'icons8-sonic-the-hedgehog-100.png',
    'icons8-spider-man-head-100.png',
    'icons8-star-trek-symbol-100.png',
    'icons8-storm-marvel-100.png',
    'icons8-superman-100.png',
    'icons8-the-flash-head-100.png',
    'icons8-the-flash-sign-100.png',
    'icons8-thor-100.png',
    'icons8-venom-head-100.png',
    'icons8-walter-white-100.png',
    'icons8-wolverine-100.png',
    'icons8-wonder-woman-100.png',
    'icons8-woody-woodpecker-100.png',
  ];

  bool possuiFoto = false;

  @override
  Widget build(BuildContext context) {
    final double? fotoSize = MediaQuery.of(context).size.width * 18 / 100;
    return Container(
      alignment: Alignment.center,
      width: fotoSize,
      height: fotoSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      child: IconButton(
        icon: Icon(
          Icons.add_a_photo,
          color: Colors.grey[400],
        ),
        onPressed: () {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text('Selecione'),
              content: SizedBox(
                width: MediaQuery.of(context).size.width * 90 / 100,
                height: MediaQuery.of(context).size.height * 50 / 100,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    // number of items per row
                    crossAxisCount: 3,
                    // vertical spacing between the items
                    mainAxisSpacing: 2,
                    // horizontal spacing between the items
                    crossAxisSpacing: 2,
                  ),
                  itemBuilder: (BuildContext ctx, int index) {
                    return ListTile(
                        title: Image.asset(
                      'assets/iconsUser/' + usuarioIcones[index],
                      width: 150,
                      height: 150,
                    ));
                  },
                  itemCount: usuarioIcones.length,
                ),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancelar'),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
