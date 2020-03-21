import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '',
  home: PreferenciasDeEstudios(),
));
class PreferenciasDeEstudios extends StatefulWidget {
  final heroTag;
  PreferenciasDeEstudios({this.heroTag});
  @override
  _PreferenciasDeEstudiosState createState() => _PreferenciasDeEstudiosState();
}
class _PreferenciasDeEstudiosState extends State<PreferenciasDeEstudios> {
  @override
  Widget build(BuildContext context) {     
    return Scaffold(
      backgroundColor: Color(0XFFFAFAFA),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 20.0,
        title: Text('PREFERENCIAS DE\nESTUDIOS', 
        style: TextStyle(fontFamily: 'Armando',fontSize: 21.0, color: Colors.white)),
       centerTitle: true,
        ),
    );
  }
}