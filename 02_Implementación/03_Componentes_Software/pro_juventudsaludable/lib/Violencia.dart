import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '',
  home: Violencia(),
));
class Violencia extends StatefulWidget {
  final heroTag;
  Violencia({this.heroTag});
  @override
  _ViolenciaState createState() => _ViolenciaState();
}
class _ViolenciaState extends State<Violencia> {
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
        title: Text('\nVIOLENCIA\n', 
        style: TextStyle(fontFamily: 'Armando',fontSize: 21.0, color: Colors.white)),
       centerTitle: true,
        ),
    );
  }
}