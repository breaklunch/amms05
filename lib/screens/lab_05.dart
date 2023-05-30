import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

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
        floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        children: [ 
          SpeedDialChild(
               backgroundColor: Color.fromARGB(255, 50, 87, 253),
                child: const Icon(Icons.add),
                onTap: () {
                  cont++;
                  setState(() {});
          }),
          SpeedDialChild(
               backgroundColor: Color.fromARGB(255, 182, 58, 0),
                 child: const Icon(Icons.remove),
                onTap: () {
                  cont--;
                  setState(() {});
          }),
          SpeedDialChild(
               backgroundColor: Color.fromARGB(255, 160, 196, 0),
                child: const Text('= 0'),
                onTap: () {
                  cont = 0;
                  setState(() {});
          }),],
      ));
  }
}