import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  /* void customDisplayDialog(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Column(mainAxisSize: MainAxisSize.min, children: [
              ListTile(
                title: Title(
                    color: AppTheme.primary,
                    child: const Text('This is a dialog')),
                subtitle:
                    const Text('lorem ajsfp ajasjp9ajkwp9oj ap9j fp9wajfp9'),
              ),
              const SizedBox(
                height: 15,
              ),
              const FlutterLogo(
                size: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Ok'))
                ],
              ),
            ]),
          );
        });
  }

  */

  void customCupertinoDialog(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
              actions: [
                TextButton(
                    child: const Text('Yes'),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                TextButton(
                    child: const Text('Cancel'),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ],
              content: Column(children: const [
                Text('This is a Dialog ?', style: TextStyle(fontSize: 20)),
                SizedBox(height: 30),
                FlutterLogo(size: 30),
              ]));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Show a dialog'),
            onPressed: () {
              customCupertinoDialog(context);
            },
          ),
        ));
  }
}
