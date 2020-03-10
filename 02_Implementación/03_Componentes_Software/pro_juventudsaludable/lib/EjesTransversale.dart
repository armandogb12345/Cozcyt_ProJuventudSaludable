import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:pro_juventudsaludable/PorRespetoAALDemas.dart';

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
      backgroundColor: Color(0xFF448AFF),
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
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(85.0), topRight: Radius.circular(85.0)),
            ),     
           /////////////////////////////////////////////// 
            padding: EdgeInsets.only(
          top: 50,
          bottom: 10,
          right: 10,
          left: 10
        ),
            child: Column(     
              children: <Widget>[                                                                                                                         
                  Row(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: <Widget>[                               
                 FlatButton(    
                   padding: EdgeInsets.only(
                     top: 15,
                     bottom: 15,
                      right: 12,
                      left: 12,
                   ),                               
                   color: Colors.lightGreenAccent[400],                                      
                   child: Text( "\n\nPOR RESPETO A\nMÍ Y A LOS DEMÁS\n\n",textAlign: TextAlign.center,), 
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => PorRespetoAmiYALosDemas()
                    ));
                   },
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),                                      
                      textColor: Colors.black,
                      highlightColor: Colors.white
                      ),
                   Text('     ',
         textAlign: TextAlign.center,
         overflow: TextOverflow.ellipsis,
         style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente'),
         ),
                   FlatButton(    
                   padding: EdgeInsets.only(
                     top: 15,
                     bottom: 15,
                      right: 15,
                      left: 15,
                   ),                               
                   color: Colors.lightGreenAccent[400],                                      
                   child: Text( "\n\nTENGO UNA VIDA\nSALUDABLE\n\n",textAlign: TextAlign.center,),
                  onPressed: (){},
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),                                      
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
                     top: 15,
                     bottom: 15,
                      right: 17,
                      left: 17,
                   ),                               
                   color: Colors.lightGreenAccent[400],                                      
                   child: Text( "\n\nANTES DE ELEGIR\nME INFORMO\n\n",textAlign: TextAlign.center,),  
                  onPressed: (){},
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),                                      
                      textColor: Colors.black,
                      highlightColor: Colors.white
                      ), 
             Text('     ',
         textAlign: TextAlign.center,
         overflow: TextOverflow.ellipsis,
         style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente'),
         ),
              FlatButton(    
                   padding: EdgeInsets.only(
                     top: 15,
                     bottom: 15,
                      right: 10,
                      left: 10,
                   ),                               
                   color: Colors.lightGreenAccent[400],                                      
                   child: Text( "\n\nCONSTRUYO UN\nPROYECTO DE VIDA\n\n",textAlign: TextAlign.center,), 
                  onPressed: (){},
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),                                      
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




