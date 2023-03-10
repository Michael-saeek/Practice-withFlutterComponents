import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(
            Icons.list_alt_rounded,
            color: AppTheme.primary,
          ),
          title: Text('Soy un title'),
          subtitle: Text('Lorem orapowjpoalkjasojaofasfvjo joawfop a'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('Cancel')),
              TextButton(
                onPressed: () {},
                child: const Text('Ok'),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
