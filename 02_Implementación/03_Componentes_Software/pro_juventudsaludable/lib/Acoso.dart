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
      backgroundColor: Color(0xFFFFB74D),
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
    body: ListView(
      children: <Widget>[          
        Container(
          child: Column(     
              children: <Widget>[ 
                Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [   
                        Expanded(
                        child: _buildSubSistemaItem('assets/LogoLABSOL/logoLabsol.PNG'),
                        ), 
                      ],
                    ) ,
              Text('         ',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente'),
                          ),
              Text(' INFORMACIÓN   ',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente',fontSize: 25),
                          ),
              ],
    ),
        ),
      ],),
    );
  }
Widget _buildSubSistemaItem(String imgPath2){
  return Padding(
    padding: EdgeInsets.only(left:0.0, right:0.0, top: 0.0),
    child: InkWell(
      onTap: () { 
        },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[          
        Container(
            child: Row(
              children: [
                Hero(
                  tag: imgPath2,
                  child: Image(                    
                    image:AssetImage(imgPath2),
                    fit: BoxFit.cover,
                    height: 145.0,
                    width: 360.0
                  )
                ),
              ]
            )
          ),
        ]
      ),
    ),
  );
}
}