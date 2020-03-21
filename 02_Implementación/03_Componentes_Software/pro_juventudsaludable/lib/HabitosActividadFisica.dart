import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '',
  home: HabitosActividadFisica(),
));
class HabitosActividadFisica extends StatefulWidget {
  final heroTag;
  HabitosActividadFisica({this.heroTag});
  @override
  _HabitosActividadFisicaState createState() => _HabitosActividadFisicaState();
}
class _HabitosActividadFisicaState extends State<HabitosActividadFisica> {
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
        title: Text('HÁBITOS ACTIVIDAD\nFÍSICA', 
        style: TextStyle(fontFamily: 'Armando',fontSize: 21.0, color: Colors.white)),
       centerTitle: true,
        ),
    );
  }
}