import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '',
  home: ConstruyoUnProyectoDeVida(),
));
class ConstruyoUnProyectoDeVida extends StatefulWidget {
  @override
  _ConstruyoUnProyectoDeVidaState createState() => _ConstruyoUnProyectoDeVidaState();
}
class _ConstruyoUnProyectoDeVidaState extends State<ConstruyoUnProyectoDeVida> {
  @override
  Widget build(BuildContext context) {
     Widget image_slider_carousel = Container(
      height: 150,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [          
          AssetImage('assets/SliderPantalla5/image2.png'),
          AssetImage('assets/SliderPantalla5/image3.jpg'),
          AssetImage('assets/SliderPantalla5/image4.png'),
          AssetImage('assets/SliderPantalla5/image5.jpg'),
          AssetImage('assets/SliderPantalla5/image6.jpg'),
        ],
        indicatorBgPadding: 4.0,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(milliseconds: 2000),
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
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(85.0), topRight: Radius.circular(85.0)),
            ),           
           ///////////////////////////////////////////////             
            child: Column(     
              children: <Widget>[         
                SizedBox(height: 10.0),                                                                                                                  
                  Row(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: <Widget>[                               
                 FlatButton(    
                   padding: EdgeInsets.only(
                     top: 50,
                     bottom: 50,
                      right: 30,
                      left: 30,                   
                   ),                               
                   color: Color(0XFF6200EA),                                      
                   child: Text( "\ASPIRACIONES",textAlign: TextAlign.center,),  
                  onPressed: (){},
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),                                      
                      textColor: Colors.white,
                      highlightColor: Colors.white
                      ), 
              Text('              ',
         textAlign: TextAlign.center,
         overflow: TextOverflow.ellipsis,
         style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente'),
         ),
              FlatButton(    
                   padding: EdgeInsets.only(
                     top: 20,
                     bottom: 20,
                      right: 20,
                      left: 20,
                   ),                               
                   color: Color(0XFF6200EA),                                      
                   child: Text( "\n",textAlign: TextAlign.center,),   
                  onPressed: (){},
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),                                      
                      textColor: Colors.black,
                      highlightColor: Colors.white
                      ), 
              Text('         ',
         textAlign: TextAlign.center,
         overflow: TextOverflow.ellipsis,
         style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente'),
         ),
              ]
            ),  
         Text('           ',
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
                      right: 20,
                      left: 20,
                   ),                               
                   color: Color(0XFF6200EA),                                     
                   child: Text( "\n",textAlign: TextAlign.center,),   
                  onPressed: (){},
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),                                      
                      textColor: Colors.black,
                      highlightColor: Colors.white
                      ), 
              Text('           ',
         textAlign: TextAlign.center,
         overflow: TextOverflow.ellipsis,
         style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente'),
         ),
              FlatButton(    
                   padding: EdgeInsets.only(
                     top: 40,
                     bottom: 40,
                      right: 20,
                      left: 20,
                   ),                               
                   color: Color(0XFF6200EA),                                    
                   child: Text( "PREFERENCIAS\nDE ESTUDIOS",textAlign: TextAlign.center,),   
                  onPressed: (){},
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),                                      
                      textColor: Colors.white,
                      highlightColor: Colors.white
                      ), 
              Text('',
         textAlign: TextAlign.center,
         overflow: TextOverflow.ellipsis,
         style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente'),
         ),
              ]
            ),   
          Row(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: <Widget>[
                FlatButton(    
                   padding: EdgeInsets.only(
                     top: 35,
                     bottom: 30,
                      right: 35,
                      left: 35,
                   ),                               
                   color: Color(0XFF6200EA),                                      
                   child: Text( "\nINTERESES\n",textAlign: TextAlign.center,),   
                  onPressed: (){},
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),                                      
                      textColor: Colors.white,
                      highlightColor: Colors.white
                      ), 
                  Text('         ',
         textAlign: TextAlign.center,
         overflow: TextOverflow.ellipsis,
         style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente'),
         ),
                FlatButton(    
                   padding: EdgeInsets.only(
                     top: 15,
                     bottom: 15,
                      right: 25,
                      left: 25,
                   ),                               
                   color: Color(0XFF6200EA),                                      
                   child: Text( "\n       \n",textAlign: TextAlign.center,),   
                  onPressed: (){},
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),                                      
                      textColor: Colors.white,
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