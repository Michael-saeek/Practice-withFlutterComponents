import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final urlImage;

  const CustomCardType2({Key? key, required this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 10,
        child: Column(
          children: [
            FadeInImage(
              image: NetworkImage(urlImage),
              placeholder: const AssetImage('assets/jar-loading.gif'),
              height: 260,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
        ));
  }
}
