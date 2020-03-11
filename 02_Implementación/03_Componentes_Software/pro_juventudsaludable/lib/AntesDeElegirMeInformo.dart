import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '',
  home: AntesDeElegirMeInformo(),
));
class AntesDeElegirMeInformo extends StatefulWidget {
  @override
  _AntesDeElegirMeInformoState createState() => _AntesDeElegirMeInformoState();
}
class _AntesDeElegirMeInformoState extends State<AntesDeElegirMeInformo> {
  @override
  Widget build(BuildContext context) {
     Widget image_slider_carousel = Container(
      height: 150,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('assets/SliderPantalla4/image1.png'),
          AssetImage('assets/SliderPantalla4/image2.jpg'),          
          AssetImage('assets/SliderPantalla4/image3.jpg'),
          AssetImage('assets/SliderPantalla4/image4.jpg'),
          AssetImage('assets/SliderPantalla4/image5.jpg'),
          AssetImage('assets/SliderPantalla4/image7.jpg'),
        ],
        indicatorBgPadding: 4.0,
        animationCurve: Curves.fastLinearToSlowEaseIn,
        animationDuration: Duration(milliseconds: 2000),
      ),
    );
    return Scaffold(
      backgroundColor: Color(0XFFFFFF00),
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
          height: MediaQuery.of(context).size.height - 185.0, 
          decoration: BoxDecoration(
            color: Color(0XFF2196F3),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(85.0), topRight: Radius.circular(85.0)),
            ),           
           ///////////////////////////////////////////////             
            child: Column(     
              children: <Widget>[ 
                SizedBox(height: 8.0),                                                                                                                        
                  Row(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: <Widget>[                               
                 FlatButton(    
                   padding: EdgeInsets.only(
                     top: 55,
                     bottom: 55,
                      right: 60,
                      left: 60,                    
                   ),                               
                   color: Colors.white,                                      
                   child: Text( "IDENTIDAD DE\nGÉNERO",textAlign: TextAlign.center,),  
                  onPressed: (){},
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),                                      
                      textColor: Colors.black,
                      highlightColor: Color(0XFF2196F3)
                      ), 
                       Text('                                 ',
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
                     top: 30,
                     bottom: 30,
                      right: 50,
                      left: 50,
                   ),                               
                   color: Colors.white,                                      
                   child: Text( "\nSEXUALIDAD\n",textAlign: TextAlign.center,),   
                  onPressed: (){},
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),                                      
                      textColor: Colors.black,
                      highlightColor: Color(0XFF2196F3)
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
                Text('                                     ',
         textAlign: TextAlign.center,
         overflow: TextOverflow.ellipsis,
         style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente'),
         ),
                FlatButton(    
                   padding: EdgeInsets.only(
                     top: 10,
                     bottom: 10,
                      right: 50,
                      left: 50,
                   ),                               
                   color: Colors.white,                                      
                   child: Text( "\n        \n",textAlign: TextAlign.center,),   
                  onPressed: (){},
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),                                      
                      textColor: Colors.black,
                      highlightColor: Color(0XFF2196F3)
                      ), 
              ]
            ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: <Widget>[
                 Text('                                                                    ',
         textAlign: TextAlign.center,
         overflow: TextOverflow.ellipsis,
         style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente'),
         ),
                FlatButton(    
                   padding: EdgeInsets.only(
                     top: 9,
                     bottom: 9,
                      right: 0,
                      left: 0,
                   ),                               
                   color: Colors.white,                                      
                   child: Text( "\n",textAlign: TextAlign.center,),   
                  onPressed: (){},
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(150.0)),                                      
                      textColor: Colors.black,
                      highlightColor: Color(0XFF2196F3)
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