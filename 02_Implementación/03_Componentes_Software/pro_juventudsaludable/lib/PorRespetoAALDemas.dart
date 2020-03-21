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
      height: 150,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('assets/SliderPantalla2/image1.jpg'),
          AssetImage('assets/SliderPantalla2/image3.jpg'),
          AssetImage('assets/SliderPantalla2/image4.jpg'),
          AssetImage('assets/SliderPantalla2/image5.jpg'),
          AssetImage('assets/SliderPantalla2/image7.jpg'),
        ],
        indicatorBgPadding: 4.0,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(milliseconds: 2000),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.blue,
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
           ///////////////////////////////////////////////             
            child: Column(     
              children: <Widget>[                                                                                                                         
                  Row(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: <Widget>[                               
                 FlatButton(    
                   padding: EdgeInsets.only(
                     top: 30,
                     bottom: 30,
                      right: 80,
                      left: 80,                    
                   ),                               
                   color: Colors.white,                                      
                   child: Text( "\nBULLYING\n",textAlign: TextAlign.center,),  
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => Bulling()
                    ));
                  },
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),                                      
                      textColor: Colors.black,
                      highlightColor: Colors.white
                      ), 
              ]
            ),  
         Text('',
         textAlign: TextAlign.center,
         overflow: TextOverflow.ellipsis,
         style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente'),
         ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: <Widget>[
                FlatButton(    
                   padding: EdgeInsets.only(
                     top: 20,
                     bottom: 20,
                      right: 50,
                      left: 50,
                   ),                               
                   color: Colors.white,                                      
                   child: Text( "\nVIOLENCIA\n",textAlign: TextAlign.center,),   
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => Violencia()
                    ));
                  },
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),                                      
                      textColor: Colors.black,
                      highlightColor: Colors.white
                      ), 
              ]
            ),
              Text('',
         textAlign: TextAlign.center,
         overflow: TextOverflow.ellipsis,
         style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente'),
         ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: <Widget>[
                FlatButton(    
                   padding: EdgeInsets.only(
                     top: 10,
                     bottom: 10,
                      right: 35,
                      left: 35,
                   ),                               
                   color: Colors.white,                                      
                   child: Text( "\nACOSO\n",textAlign: TextAlign.center,),   
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => Acoso()
                    ));
                  },
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),                                      
                      textColor: Colors.black,
                      highlightColor: Colors.white
                      ), 
              ]
            ),
              Text('',
         textAlign: TextAlign.center,
         overflow: TextOverflow.ellipsis,
         style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente'),
         ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: <Widget>[
                FlatButton(    
                   padding: EdgeInsets.only(
                     top: 3,
                     bottom: 3,
                      right: 0,
                      left: 0,
                   ),                               
                   color: Colors.white,                                      
                   child: Text( "\n",textAlign: TextAlign.center,),   
                  onPressed: (){},
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),                                      
                      textColor: Colors.black,
                      highlightColor: Colors.white
                      ), 
              ]
            ),
              ]
            )
            ),
    ],),
    );
  }
}