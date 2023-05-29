import 'package:flutter/material.dart';

class LabScreen extends StatefulWidget {
  const LabScreen({super.key});
  @override
  State<LabScreen> createState() => _LabScreenState();
}

class _LabScreenState extends State<LabScreen> {
  int cont = 0;
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
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Ibañez.Julca'),
            Text('Contador de clics en flutter', style: fontSizeVar28),
            Text('$cont', style: fontSizeVar28)
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Row(
          children: [
            FloatingActionButton(
                backgroundColor: Color.fromARGB(255, 37, 158, 0),
                child: const Icon(Icons.add),
                onPressed: () {
                  cont++;
                  setState(() {});
                }),
            FloatingActionButton(
               backgroundColor: Color.fromARGB(255, 197, 13, 13),
                child: const Icon(Icons.remove),
                onPressed: () {
                  cont--;
                  setState(() {});
                }),
            FloatingActionButton(
               backgroundColor: Color.fromARGB(255, 199, 96, 0),
                child: const Text('En 0'),
                onPressed: () {
                  cont = 0;
                  setState(() {});
                }),
            FloatingActionButton(
               backgroundColor: Color.fromARGB(255, 0, 95, 158),
                child: const Text('+5'),
                onPressed: () {
                  cont+=5;
                  setState(() {});
                }),
                FloatingActionButton(
                   backgroundColor: Color.fromARGB(255, 151, 141, 0),
                child: const Text('-5'),
                onPressed: () {
                  cont-=5;
                  setState(() {});
                }),
          ],
        ));
  }
}
