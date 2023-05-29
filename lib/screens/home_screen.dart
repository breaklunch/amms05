import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const fontSizeVar28 = TextStyle(fontSize: 28);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Aplicacion Ibañez Julca'),
          backgroundColor: Color.fromARGB(255, 156, 154, 9),
          elevation: 12.5,
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: const Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Ibañez.Julca'),
            Text(
              'Contador de clics en flutter',
              style: fontSizeVar28,
            ),
            Text(
              '0',
              style: fontSizeVar28,
            )
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Row(
          children: [
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
              print('Mensaje en consola');
            }),
            FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () {
              print('Mensaje en consola');
            }),
            FloatingActionButton(
              child: const Text('En 0'),
              onPressed: () {
              print('Mensaje en consola');
            }),
          ],
        ));
  }
}
