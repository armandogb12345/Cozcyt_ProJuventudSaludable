import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '',
  home: IdentidadDeGenero(),
));
class IdentidadDeGenero extends StatefulWidget {
  final heroTag;
  IdentidadDeGenero({this.heroTag});
  @override
  _IdentidadDeGeneroState createState() => _IdentidadDeGeneroState();
}
class _IdentidadDeGeneroState extends State<IdentidadDeGenero> {
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
        title: Text('IDENTIDAD DE GÉNERO', 
        style: TextStyle(fontFamily: 'Armando',fontSize: 21.0, color: Colors.white)),
       centerTitle: true,
        ),
    );
  }
}