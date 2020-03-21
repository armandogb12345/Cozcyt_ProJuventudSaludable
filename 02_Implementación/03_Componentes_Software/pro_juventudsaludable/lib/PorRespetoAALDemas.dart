import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:pro_juventudsaludable/Bulling.dart';
import 'package:pro_juventudsaludable/Violencia.dart';
import 'package:pro_juventudsaludable/Acoso.dart';

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
     Widget image_slider_carousel = Container(
      height: 190,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('icons/EjesTrans/1.jpeg'),
        ],
        indicatorBgPadding: 0.0,
      ),
    );
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
        title: Text('\POR RESPETO A MI\nY A LOS DEMAS', 
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
                        child: _buildSubSistemaItem1('icons/PorRespA/1.jpeg'),
                        ), 
                      ],
                    ) ,     
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [     
                       Expanded(
                        child: _buildSubSistemaItem2('icons/PorRespA/3.jpeg'),
                       ),
                      ],
                    ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [   
                        Expanded(
                        child: _buildSubSistemaItem11('icons/PorRespA/2.jpeg'), 
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
                      builder: (context) => Acoso(heroTag: imgPath),
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
Widget _buildSubSistemaItem11(String imgPath2){
  return Padding(
    padding: EdgeInsets.only(left:90.0, right:90.0, top: 20.0),
    child: InkWell(
      onTap: () { 
         Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Violencia(heroTag: imgPath2)
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
Widget _buildSubSistemaItem2(String imgPath){
  return Padding(
    padding: EdgeInsets.only(left:90.0, right:90.0, top: 20.0),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Bulling(heroTag: imgPath)
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
         