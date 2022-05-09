import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu_Atividades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Atividades Avaliativas',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Ver mais',
                    style: TextStyle(color: Colors.grey[400]),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 40 / 100,
              child: ListView(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    height: MediaQuery.of(context).size.height * 25 / 100,
                    child: Card(
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          debugPrint('Card tapped.');
                        },
                        child: Container(
                            alignment: Alignment.center,
                            child: const ListTile(
                              leading: Text('Leading'),
                              title: Text('Title title'),
                              subtitle: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eleifend consequat neque,vehicula condimentum nibh.  ',
                              ),
                              trailing: Text('Trailing'),
                              dense: false,
                              isThreeLine: true,
                            )),
                      ),
                    ),
                  ),
                  for (int i = 1; i < 6; i++)
                    Container(
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      height: MediaQuery.of(context).size.height * 20 / 100,
                      child: Card(
                        child: InkWell(
                          splashColor: Colors.blue.withAlpha(30),
                          onTap: () {
                            debugPrint('Card tapped.');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [],
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
