import 'package:flutter/material.dart';
import 'package:yo/HabitosActividadFisica.dart';
import 'package:yo/HabitosAlimenticios.dart';
import 'package:yo/TiempoLibre.dart';
import 'package:yo/Adicciones.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '',
  home: TengoUnaVidaSaludable(),
));
class TengoUnaVidaSaludable extends StatefulWidget {
  final heroTag;
  TengoUnaVidaSaludable({this.heroTag});
  @override
  _TengoUnaVidaSaludableState createState() => _TengoUnaVidaSaludableState();
}
class _TengoUnaVidaSaludableState extends State<TengoUnaVidaSaludable> {
  @override
  Widget build(BuildContext context) {     
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent[700],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 50.0,
        title: Text('\nBACK                                          \n', 
        style: TextStyle(fontFamily: 'Catamaran',fontSize: 19.0, color: Colors.white)),
       centerTitle: true,
        ),
    body: ListView(children: <Widget>[
    SizedBox(height: 5.0),        
        Container(
          height: MediaQuery.of(context).size.height - 0.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(0.0), topRight: Radius.circular(0.0)),
            ),           
           ///////////////////////////////////////////////             
            child: Column(     
              children: <Widget>[  
                Row(                  
                      children: [   
                        Expanded(
                        child: _buildSubSistemaItem0('icons/EjesTrans/2.jpeg'),
                        ),  
                      ],
                    ) ,                                                                                                                       
                   Row(                  
                      children: [   
                        Expanded(
                        child: _buildSubSistemaItem1('icons/VidaSalu/Adicciones.jpg'),
                        ),  
                      ],
                    ) ,     
                    Row(                  
                      children: [ 
                        Expanded(
                        child: _buildSubSistemaItem2('icons/VidaSalu/TiempoLibre.jpg'),
                        ), 
                      ],
                    ) ,
                    Row(                  
                      children: [     
                       Expanded(
                        child: _buildSubSistemaItem3('icons/VidaSalu/HabitosAlimenticios.jpg'),
                       ),
                      ],
                    ),
                    Row(                  
                      children: [
                       Expanded(
                        child: _buildSubSistemaItem4('icons/VidaSalu/HabitosDeEjercicio.jpg'),
                       ),
                      ],
                    ),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    padding: EdgeInsets.only(left:0.0, right:0.0, top: 4.0),
    child: InkWell(
      onTap: () {    
        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Adicciones(heroTag: imgPath)
                    ));
        },        
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Hero(
                  tag: imgPath,
                  child: Image(
                    image:AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 105.0,
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
Widget _buildSubSistemaItem2(String imgPath2){
  return Padding(
    padding: EdgeInsets.only(left:0.0, right:0.0, top: 7.0),
    child: InkWell(
      onTap: () { 
        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TiempoLibre(heroTag: imgPath2)
                    ));
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
                    height: 105.0,
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
Widget _buildSubSistemaItem3(String imgPath){
  return Padding(
    padding: EdgeInsets.only(left:0.0, right:0.0, top: 7.0),
    child: InkWell(
      onTap: () {        
         Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HabitosAlimenticios(heroTag: imgPath)
                    ));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Hero(
                  tag: imgPath,
                  child: Image(
                    image:AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 105.0,
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
Widget _buildSubSistemaItem4(String imgPath){
  return Padding(
    padding: EdgeInsets.only(left:0.0, right:0.0, top: 7.0),
    child: InkWell(
      onTap: () {          
        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HabitosActividadFisica(heroTag: imgPath),
                    ));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Row(
              children: [
                Hero(
                  tag: imgPath,
                  child: Image(
                    image:AssetImage(imgPath),
                    fit: BoxFit.cover,
                    height: 105.0,
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