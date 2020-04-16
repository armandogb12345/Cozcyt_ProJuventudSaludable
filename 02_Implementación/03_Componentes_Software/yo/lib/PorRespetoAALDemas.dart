import 'package:flutter/material.dart';
import 'package:yo/Bulling.dart';
import 'package:yo/Violencia.dart';
import 'package:yo/Acoso.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '',
  home: PorRespetoAmiYALosDemas(),
));
class PorRespetoAmiYALosDemas extends StatefulWidget {
  final heroTag;
  PorRespetoAmiYALosDemas({this.heroTag});
  @override
  _PorRespetoAmiYALosDemasState createState() => _PorRespetoAmiYALosDemasState();
}
class _PorRespetoAmiYALosDemasState extends State<PorRespetoAmiYALosDemas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 30.0,
        title: Text('\nBACK                                          \n', 
        style: TextStyle(fontFamily: 'Catamaran',fontSize: 19.0, color: Colors.white)),
       centerTitle: true,
        ),
    body: ListView(children: <Widget>[    
    SizedBox(height: 10.0),        
        Container(
          height: MediaQuery.of(context).size.height - 10.0,   
          decoration: BoxDecoration(
            color:  Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(0.0), topRight: Radius.circular(0.0)),
            ),       
           ///////////////////////////////////////////////             
           child: Column(     
              children: <Widget>[ 
                Row(                
                      children: [  
                      Expanded(
                        child: _buildSubSistemaItem0('icons/EjesTrans/1.jpeg'),
                        ),
                      ],
                    ) , 
                Row(                
                      children: [  
                      Expanded(
                        child: _buildSubSistemaItem1('icons/PorRespA/Acoso.jpg'),
                        ),
                      ],
                    ) ,     
                    Row(                   
                      children: [    
                       Expanded(
                        child: _buildSubSistemaItem2('icons/PorRespA/Bulling.jpg'),
                       ),
                      ],
                    ),
                  Row(                  
                      children: [ 
                        Expanded(
                        child: _buildSubSistemaItem11('icons/PorRespA/Violencia.jpg'), 
                        ), 
                      ],
                    )
                 
              ]
            )
            ),
    ],),
    );
  }
  Widget _buildSubSistemaItem0(String imgPath){
  return Padding(
    padding: EdgeInsets.only(left:0.0, right:0.0, top: 0.0),
    child: InkWell(
      onTap: () {     
        },        
      child: Row(
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Hero(
                  tag: imgPath,
                  child: Image(
                    image:AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 190.0,
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
  Widget _buildSubSistemaItem1(String imgPath){
  return Padding(
    padding: EdgeInsets.only(left:0.0, right:0.0, top: 0.0),
    child: InkWell(
      onTap: () {     
        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Acoso(heroTag: imgPath),
                    ));
        },        
      child: Row(
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Hero(
                  tag: imgPath,
                  child: Image(
                    image:AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 130.0,
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
Widget _buildSubSistemaItem11(String imgPath2){
  return Padding(
    padding: EdgeInsets.only(left:0.0, right:0.0, top: 10.0),
    child: InkWell(
      onTap: () { 
         Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Violencia(heroTag: imgPath2)
                    ));
        },
      child: Row(
        children: <Widget>[          
        Container(
            child: Row(
              children: [
                Hero(
                  tag: imgPath2,
                  child: Image(                    
                    image:AssetImage(imgPath2),
                    fit: BoxFit.cover,
                    height: 130.0,
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
Widget _buildSubSistemaItem2(String imgPath){
  return Padding(
    padding: EdgeInsets.only(left:0.0, right:0.0, top: 10.0),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Bulling(heroTag: imgPath)
                    ));
      },
      child: Row(
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Hero(
                  tag: imgPath,
                  child: Image(
                    image:AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 130.0,
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
         