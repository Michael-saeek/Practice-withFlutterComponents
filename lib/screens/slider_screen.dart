import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _switch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider(
            min: 100,
            max: 400,
            value: _sliderValue,
            onChanged: (value) {
              if (!_switch) {
                setState(() {
                  _sliderValue = value;
                });
              }
            },
          ),
          SwitchListTile(
            title: const Text('Habilitar aumento de pixels'),
            value: _switch,
            onChanged: (value) {
              setState(() {
                _switch = value;
              });
            },
          ),
          Image(
              height: _sliderValue,
              image: const NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Mangekyou_Sharingan_Sasuke.svg/2048px-Mangekyou_Sharingan_Sasuke.svg.png'))
        ],
      ),
    );
  }
}
