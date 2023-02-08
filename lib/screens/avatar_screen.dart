import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://static.wikia.nocookie.net/naruto/images/2/24/Itachi-Uchiha.png/revision/latest?cb=20181104200812&path-prefix=pt-br'),
            ),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 150,
        backgroundImage: NetworkImage(
            'https://static.wikia.nocookie.net/naruto/images/2/24/Itachi-Uchiha.png/revision/latest?cb=20181104200812&path-prefix=pt-br'),
      )),
    );
  }
}
