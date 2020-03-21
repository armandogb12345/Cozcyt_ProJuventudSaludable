import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '',
  home: CartillaDeSalud(),
));
class CartillaDeSalud extends StatefulWidget {
  final heroTag;
  CartillaDeSalud({this.heroTag});
  @override
  _CartillaDeSaludState createState() => _CartillaDeSaludState();
}
class _CartillaDeSaludState extends State<CartillaDeSalud> {
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
        title: Text('CARTILLA DE SALUD', 
        style: TextStyle(fontFamily: 'Armando',fontSize: 21.0, color: Colors.white)),
       centerTitle: true,
        ),
    );
  }
}