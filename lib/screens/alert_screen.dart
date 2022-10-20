import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayIOSDialog(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('titulo'),
          content: Column(mainAxisSize: MainAxisSize.min, children: const [
            Text('este es el contenido de la alerta'),
            SizedBox(
              height: 10,
            ),
            FlutterLogo(
              size: 100,
            )
          ]),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar')),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('ok')),
          ],
        );
      },
    );
  }

  void displayAndroidDialog(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: ((context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            title: const Text('titulo'),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text('este es el contenido de la alerta'),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              )
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cerrar'))
            ],
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Text(
            'Mostrar alerta',
            style: TextStyle(fontSize: 16),
          ),
        ),
        onPressed: () => Platform.isAndroid
            ? displayAndroidDialog(context)
            : displayIOSDialog(context),
      )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
