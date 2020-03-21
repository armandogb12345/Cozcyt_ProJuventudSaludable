import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:pro_juventudsaludable/HabitosActividadFisica.dart';
import 'package:pro_juventudsaludable/HabitosAlimenticios.dart';
import 'package:pro_juventudsaludable/TiempoLibre.dart';
import 'package:pro_juventudsaludable/Adicciones.dart';

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
     Widget image_slider_carousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('icons/EjesTrans/2.jpeg'),  
        ],
        indicatorBgPadding: 0.0,
      ),
    );
    return Scaffold(
      backgroundColor: Color(0xFF689F38),
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
        title: Text('\TENGO UNA VIDA\nSALUDABLE', 
        style: TextStyle(fontFamily: 'Armando',fontSize: 21.0, color: Colors.white)),
       centerTitle: true,
        ),
    body: ListView(children: <Widget>[image_slider_carousel,
    SizedBox(height: 10.0),        
        Container(
          height: MediaQuery.of(context).size.height - 230.0,
          decoration: BoxDecoration(
            color: Color(0XFFCFD8DC),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(65.0), topRight: Radius.circular(65.0)),
            ),           
           ///////////////////////////////////////////////             
            child: Column(     
              children: <Widget>[                                                                                                                         
                   Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [   
                        Expanded(
                        child: _buildSubSistemaItem1('icons/VidaSalu/3.jpeg'),
                        ), 
                        Expanded(
                        child: _buildSubSistemaItem11('icons/VidaSalu/2.jpeg'),
                        ), 
                      ],
                    ) ,     
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [     
                       Expanded(
                        child: _buildSubSistemaItem2('icons/VidaSalu/4.jpeg'),
                       ),
                       Expanded(
                        child: _buildSubSistemaItem22('icons/VidaSalu/1.jpeg'),
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
    padding: EdgeInsets.only(left:10.0, right:5.0, top: 35.0),
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
                    height: 160.0,
                    width: 165.0
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
    padding: EdgeInsets.only(left:6.0, right:9.0, top: 35.0),
    child: InkWell(
      onTap: () { 
         Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HabitosAlimenticios(heroTag: imgPath2)
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
                    height: 160.0,
                    width: 165.0
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
    padding: EdgeInsets.only(left:10.0, right:5.0, top: 20.0),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TiempoLibre(heroTag: imgPath)
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
                    height: 160.0,
                    width: 165.0
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
Widget _buildSubSistemaItem22(String imgPath){
  return Padding(
    padding: EdgeInsets.only(left:10.0, right:5.0, top: 20.0),
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
                    height: 160.0,
                    width: 165.0
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