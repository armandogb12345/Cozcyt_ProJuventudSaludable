import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:yo/PorRespetoAALDemas.dart';
import 'package:yo/TengoUnaVidaSaludable.dart';
import 'package:yo/AntesDeElegirMeInformo.dart';
import 'package:yo/ConstruyoUnProyectoDeVida.dart';


void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '',
  home: EjesTransversales(),
));
class EjesTransversales extends StatefulWidget {
  @override
  _EjesTransversalesState createState() => _EjesTransversalesState();
}
class _EjesTransversalesState extends State<EjesTransversales> {
  @override
  Widget build(BuildContext context) {
     Widget imageSliderCarousel = Container(
      height: 150,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('assets/SliderPantalla1/image1.jpg'),
          AssetImage('assets/SliderPantalla1/image3.jpg'),
          AssetImage('assets/SliderPantalla1/image4.jpg'),
          AssetImage('assets/SliderPantalla1/image5.jpg'),
          AssetImage('assets/SliderPantalla1/image6.jpg'),
          AssetImage('assets/SliderPantalla1/image7.jpg'),
        ],
        indicatorBgPadding: 4.0,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(milliseconds: 2000),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
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
        title: Text('\SELECCIONE UN TEMA \nDE SU INTERES', 
        style: TextStyle(fontFamily: 'Armando',fontSize: 21.0, color: Colors.white)),
       centerTitle: true,
        ),
    body: ListView(children: <Widget>[imageSliderCarousel,
    SizedBox(height: 5.0),        
        Container(
          height: MediaQuery.of(context).size.height - 240.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(45.0), topRight: Radius.circular(45.0)),
            ),     
           /////////////////////////////////////////////// 
            child: Column(     
              children: <Widget>[       
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [   
                        Expanded(
                         child: _buildSubSistemaItem1('icons/EjesTrans/PorResp.jpeg'),
                        ),    
                       Expanded(
                        child: _buildSubSistemaItem11('icons/EjesTrans/VidaSalu.jpeg'), 
                       ),
                      ],
                    ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [   
                        Expanded(
                         child: _buildSubSistemaItem2('icons/EjesTrans/AntesDeElegir.jpeg'),
                        ),    
                       Expanded(
                        child: _buildSubSistemaItem22('icons/EjesTrans/ProyectoVida.jpeg'), 
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
    padding: EdgeInsets.only(left:10.0, right:5.0, top: 20.0),
    child: InkWell(
      onTap: () {     
        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PorRespetoAmiYALosDemas(heroTag: imgPath),
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
                    height: 175.0,
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
    padding: EdgeInsets.only(left:10.0, right:5.0, top: 20.0),
    child: InkWell(
      onTap: () { 
         Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TengoUnaVidaSaludable(heroTag: imgPath2)
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
                    height: 175.0,
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
    padding: EdgeInsets.only(left:10.0, right:5.0, top: 15.0),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => AntesDeElegirMeInformo(heroTag: imgPath)
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
                    height: 175.0,
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
    padding: EdgeInsets.only(left:10.0, right:5.0, top: 15.0),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ConstruyoUnProyectoDeVida(heroTag: imgPath)
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
                    height: 175.0,
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









