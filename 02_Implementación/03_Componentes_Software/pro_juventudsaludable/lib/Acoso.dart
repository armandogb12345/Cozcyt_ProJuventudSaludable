import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '',
  home: Acoso(),
));
class Acoso extends StatefulWidget {
  final heroTag;
  Acoso({this.heroTag});
  @override
  _AcosoState createState() => _AcosoState();
}
class _AcosoState extends State<Acoso> {
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
        title: Text('\nACOSO\n', 
        style: TextStyle(fontFamily: 'Armando',fontSize: 21.0, color: Colors.white)),
       centerTitle: true,
        ),
    );
  }
}