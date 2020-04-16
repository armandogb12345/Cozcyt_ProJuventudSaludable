import 'package:flutter/material.dart';
import 'package:yo/Aspiraciones.dart';
import 'package:yo/Intereses.dart';
import 'package:yo/PreferenciasDeEstudios.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '',
  home: ConstruyoUnProyectoDeVida(),
));
class ConstruyoUnProyectoDeVida extends StatefulWidget {
  final heroTag;
  ConstruyoUnProyectoDeVida({this.heroTag});
  @override
  _ConstruyoUnProyectoDeVidaState createState() => _ConstruyoUnProyectoDeVidaState();
}
class _ConstruyoUnProyectoDeVidaState extends State<ConstruyoUnProyectoDeVida> {
  @override
  Widget build(BuildContext context) {     
    return Scaffold(
      backgroundColor: Colors.blueAccent,
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
    SizedBox(height: 10.0),        
        Container(
          height: MediaQuery.of(context).size.height - 10.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(0.0), topRight: Radius.circular(0.0)),
            ),           
           ///////////////////////////////////////////////             
            child: Column(     
              children: <Widget>[ 
                Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [   
                        Expanded(
                        child: _buildSubSistemaItem0('icons/EjesTrans/4.jpeg'),
                        ), 
                      ],
                    ) ,        
                Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [   
                        Expanded(
                        child: _buildSubSistemaItem1('icons/ProyectoDeVida/Aspiraciones.jpg'),
                        ), 
                      ],
                    ) ,     
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [     
                       Expanded(
                        child: _buildSubSistemaItem2('icons/ProyectoDeVida/Intereses.jpg'),
                       ),
                      ],
                    ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [   
                        Expanded(
                        child: _buildSubSistemaItem3('icons/ProyectoDeVida/PreferenciasDeEstudio.jpg'), 
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
    padding: EdgeInsets.only(left:0.0, right:0.0, top: 10.0),
    child: InkWell(
      onTap: () {     
        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Aspiraciones(heroTag: imgPath),
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
Widget _buildSubSistemaItem2(String imgPath2){
  return Padding(
    padding: EdgeInsets.only(left:0.0, right:0.0, top: 10.0),
    child: InkWell(
      onTap: () { 
         Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Intereses(heroTag: imgPath2)
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
Widget _buildSubSistemaItem3(String imgPath){
  return Padding(
    padding: EdgeInsets.only(left:0.0, right:0.0, top: 10.0),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PreferenciasDeEstudios(heroTag: imgPath)
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