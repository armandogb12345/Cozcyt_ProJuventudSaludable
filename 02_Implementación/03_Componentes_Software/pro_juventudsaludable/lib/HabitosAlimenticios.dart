import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '',
  home: HabitosAlimenticios(),
));
class HabitosAlimenticios extends StatefulWidget {
  final heroTag;
  HabitosAlimenticios({this.heroTag});
  @override
  _HabitosAlimenticiosState createState() => _HabitosAlimenticiosState();
}
class _HabitosAlimenticiosState extends State<HabitosAlimenticios> {
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
        title: Text('HÁBITOS ALIMENTICIOS', 
        style: TextStyle(fontFamily: 'Armando',fontSize: 21.0, color: Colors.white)),
       centerTitle: true,
        ),
    );
  }
}