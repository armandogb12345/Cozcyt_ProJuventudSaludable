import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:pro_juventudsaludable/IdentidadDeGenero.dart';
import 'package:pro_juventudsaludable/Sexualidad.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '',
  home: AntesDeElegirMeInformo(),
));
class AntesDeElegirMeInformo extends StatefulWidget {
  final heroTag;
  AntesDeElegirMeInformo({this.heroTag});
  @override
  _AntesDeElegirMeInformoState createState() => _AntesDeElegirMeInformoState();
}
class _AntesDeElegirMeInformoState extends State<AntesDeElegirMeInformo> {
  @override
  Widget build(BuildContext context) {
     Widget image_slider_carousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('icons/EjesTrans/3.jpeg'),
        ],
        indicatorBgPadding: 0.0,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.red,
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
        title: Text('\ANTES DE ELEGIR\nME INFORMO', 
        style: TextStyle(fontFamily: 'Armando',fontSize: 21.0, color: Colors.white)),
       centerTitle: true,
        ),
    body: ListView(children: <Widget>[image_slider_carousel,
    SizedBox(height: 10.0),        
        Container(
          height: MediaQuery.of(context).size.height - 270.0, 
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
                        child: _buildSubSistemaItem1('icons/AntesDeEleg/1.jpeg'),
                        ), 
                      ],
                    ) ,     
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [     
                       Expanded(
                        child: _buildSubSistemaItem2('icons/AntesDeEleg/2.jpeg'),
                       ),
                      ],
                    ),
              ]
            )
            ),
    ],),
    );
  }
   Widget _buildSubSistemaItem1(String imgPath){
  return Padding(
    padding: EdgeInsets.only(left:90.0, right:90.0, top: 13.0),
    child: InkWell(
      onTap: () {     
        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Sexualidad(heroTag: imgPath),
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
                    height: 155.0,
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
    padding: EdgeInsets.only(left:90.0, right:90.0, top: 22.0),
    child: InkWell(
      onTap: () { 
         Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => IdentidadDeGenero(heroTag: imgPath2)
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
                    height: 155.0,
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