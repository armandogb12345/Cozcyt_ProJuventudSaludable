import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '',
  home: Adicciones(),
));
class Adicciones extends StatefulWidget {
  final heroTag;
  Adicciones({this.heroTag});
  @override
  _AdiccionesState createState() => _AdiccionesState();
}
class _AdiccionesState extends State<Adicciones> {
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
        title: Text('ADICCIONES', 
        style: TextStyle(fontFamily: 'Armando',fontSize: 21.0, color: Colors.white)),
       centerTitle: true,
        ),
    );
  }
}