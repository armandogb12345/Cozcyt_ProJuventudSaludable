import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:pro_juventudsaludable/Aspiraciones.dart';
import 'package:pro_juventudsaludable/Intereses.dart';
import 'package:pro_juventudsaludable/PreferenciasDeEstudios.dart';

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
     Widget image_slider_carousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [          
          AssetImage('icons/EjesTrans/4.jpeg'),
        ],
        indicatorBgPadding: 0.0,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.purple,
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
        title: Text('\CONSTRUYO UN\nPROYECTO DE VIDA', 
        style: TextStyle(fontFamily: 'Armando',fontSize: 21.0, color: Colors.white)),
       centerTitle: true,
        ),
    body: ListView(children: <Widget>[image_slider_carousel,
    SizedBox(height: 10.0),        
        Container(
          height: MediaQuery.of(context).size.height - 185.0,
          decoration: BoxDecoration(
            color: Color(0XFFCFD8DC),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(85.0), topRight: Radius.circular(85.0)),
            ),           
           ///////////////////////////////////////////////             
            child: Column(     
              children: <Widget>[         
               Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [   
                        Expanded(
                        child: _buildSubSistemaItem1('icons/ProyectoDeVida/1.jpeg'),
                        ), 
                      ],
                    ) ,     
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [     
                       Expanded(
                        child: _buildSubSistemaItem2('icons/ProyectoDeVida/3.jpeg'),
                       ),
                      ],
                    ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [   
                        Expanded(
                        child: _buildSubSistemaItem3('icons/ProyectoDeVida/2.jpeg'), 
                        ), 
                      ],
                    )     
              ]
            )
            ),
    ],),
    );
  }
   Widget _buildSubSistemaItem1(String imgPath){
  return Padding(
    padding: EdgeInsets.only(left:90.0, right:90.0, top: 10.0),
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
                    width: 180.0
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
    padding: EdgeInsets.only(left:90.0, right:90.0, top: 20.0),
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
                    width: 180.0
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
    padding: EdgeInsets.only(left:90.0, right:90.0, top: 20.0),
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
                    width: 180.0
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