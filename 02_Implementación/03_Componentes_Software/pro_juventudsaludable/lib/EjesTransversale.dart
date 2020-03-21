import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:pro_juventudsaludable/PorRespetoAALDemas.dart';
import 'package:pro_juventudsaludable/TengoUnaVidaSaludable.dart';
import 'package:pro_juventudsaludable/AntesDeElegirMeInformo.dart';
import 'package:pro_juventudsaludable/ConstruyoUnProyectoDeVida.dart';


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
     Widget image_slider_carousel = Container(
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
        title: Text('\SELECCIONE UN TEMA \nDE SU INTERES', 
        style: TextStyle(fontFamily: 'Armando',fontSize: 21.0, color: Colors.white)),
       centerTitle: true,
        ),
    body: ListView(children: <Widget>[image_slider_carousel,
    SizedBox(height: 15.0),        
        Container(
          height: MediaQuery.of(context).size.height - 185.0,
          decoration: BoxDecoration(
            color: Color(0XFFFAFAFA),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(45.0), topRight: Radius.circular(45.0)),
            ),     
           /////////////////////////////////////////////// 
            child: Column(     
              children: <Widget>[       
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [   
                        Expanded(
                         child: _buildSubSistemaItem1('icons/1.png'),
                        ),    
                       Expanded(
                        child: _buildSubSistemaItem11('icons/2.png'), 
                       ),
                      ],
                    ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [   
                        Expanded(
                         child: _buildSubSistemaItem2('icons/3.png'),
                        ),    
                       Expanded(
                        child: _buildSubSistemaItem22('icons/4.png'), 
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
    padding: EdgeInsets.only(left:25.0, right:5.0, top: 40.0),
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
                    height: 130.0,
                    width: 150.0
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
    padding: EdgeInsets.only(left:10.0, right:5.0, top: 1.0),
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
                    height: 160.0,
                    width: 160.0
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
    padding: EdgeInsets.only(left:0.0, right:0.0, top: 1.0),
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
                    height: 180.0,
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
Widget _buildSubSistemaItem22(String imgPath){
  return Padding(
    padding: EdgeInsets.only(left:5.0, right:5.0, top: 1.0),
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
                    height: 160.0,
                    width: 160.0
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









