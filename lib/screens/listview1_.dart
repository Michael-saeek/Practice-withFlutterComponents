import 'package:flutter/material.dart';

class Listview1 extends StatelessWidget {
  const Listview1({Key? key}) : super(key: key);

  final options = const [
    'Read books',
    'Watch TV',
    'Play games',
    'Do exercise',
    'Eat a lot',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /* appbar posee caracteristicas de medidas que hace que no sea una constante */
        appBar: AppBar(
          title: const Text('List Components'),
        ),
        /* Listview recibe una lista de array de widgets por lo tanto el parametro que usaremos es Children*/

        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(options[index]),
              trailing: const Icon(
                Icons.arrow_right_sharp,
              ),
              onTap: () {},
            );
          },
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
