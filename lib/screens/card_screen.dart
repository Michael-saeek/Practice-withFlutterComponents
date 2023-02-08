import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Tarjetas')),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
              urlImage:
                  'https://pbs.twimg.com/media/FKNlhKZUcAEd7FY?format=jpg&name=4096x4096',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              urlImage:
                  'https://res.cloudinary.com/practicaldev/image/fetch/s--Qth_yXk1--/c_imagga_scale,f_auto,fl_progressive,h_900,q_auto,w_1600/https://thepracticaldev.s3.amazonaws.com/i/9amcr9hg112df5ckybbh.png',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              urlImage:
                  'https://raw.githubusercontent.com/PixelaGt/flusmic/master/images/flusmic.png',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              urlImage:
                  'https://redwerk.es/wp-content/uploads/2020/08/f-image.png',
            ),
          ],
        ));
  }
}
