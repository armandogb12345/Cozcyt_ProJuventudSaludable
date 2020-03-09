import 'package:flutter/material.dart';
//import 'package:carousel_pro/carousel_pro.dart';

//main() => runApp(MyApp());

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageCarousel(),
    );
  }
}*/
/*class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Carousel(
      boxFit: BoxFit.cover,
      images: [
        /*AssetImage('assets/SliderPantalla1/image1.jpg'),
        AssetImage('assets/SliderPantalla1/image2.jpg'),
        AssetImage('assets/SliderPantalla1/image3.jpg'),
        AssetImage('assets/SliderPantalla1/image4.jpg'),
        AssetImage('assets/SliderPantalla1/image5.jpg'),
        AssetImage('assets/SliderPantalla1/image6.jpg'),*/
      ],
      animationCurve: Curves.fastLinearToSlowEaseIn,
      animationDuration: Duration(milliseconds: 2000),
    );
  }
}*/

class EjesTransversales extends StatefulWidget {
  @override
  _EjesTransversalesState createState() => _EjesTransversalesState();
}

class _EjesTransversalesState extends State<EjesTransversales> {
  @override
  Widget build(BuildContext context) {
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
      
      body: Container(        
        padding: EdgeInsets.only(
          top: 200,
          bottom: 10,
          right: 10,
          left: 10
        ),
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(""))
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: <Widget>[
                Column(
                  children: <Widget>[                
                Padding(
                  padding: EdgeInsets.all(10),
                child: new RaisedButton(
                  color: Colors.lightGreenAccent[400],
                  shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)
                  ),
                  onPressed: null,
                  child: SizedBox(
                    width: 115,
                    height: 125,
                    child: Center(
                      child: Text("POR RESPETO A MÍ Y A LOS DEMÁS",textAlign:TextAlign.center), 
                    ),
                  )
                ),
                )
              ],
                ),
              Column(
                  children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                child: RaisedButton(
                  color: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)
                  ),
                  onPressed: null,
                  child: SizedBox(
                    width: 115,
                    height: 125,
                    child: Center(
                      child: Text("TENGO UNA VIDA SALUDABLE",textAlign:TextAlign.center), 
                    ),
                  )
                ),
                )
              ],
                ),
              ]
            ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: <Widget>[
                Column(
                  children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                child: RaisedButton(
                  color: Colors.white,
                  shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)
                  ),
                  onPressed: null,
                  child: SizedBox(
                    width: 115,
                    height: 125,
                    child: Center(
                      child: Text("ANTES DE ELEGIR ME INFORMO",textAlign:TextAlign.center), 
                    ),
                  )
                ),
                )
              ],
                ),
              Column(
                  children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                child: RaisedButton(   
                  color: Colors.white,               
                  shape: new RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0)
                  ),
                  onPressed: null,
                  child: SizedBox(
                    width: 115,
                    height: 125,
                    child: Center(
                      child: Text("CONSTRUYO UN PROYECTO DE VIDA",textAlign:TextAlign.center), 
                    ),
                  )
                ),
                )
              ],
                ),
              ]
            )  
          ],
        ),
      ),
     /* body: ListView(        
        children: [
          Stack(
            children:[
              Container(                
                height: MediaQuery.of(context).size.height - 120.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
            Positioned(
              top: 75.0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(75.0),
                    topRight: Radius.circular(75.0),                    
                  ),
                color: Colors.white,               
                ),
               height: MediaQuery.of(context).size.height - 100.0,
               width: MediaQuery.of(context).size.width,
              ),
            )
            ]
          )
        ]
      ),
      */); 
  }
}






















/*SizedBox(height: 12.0),            
    Container(
      height: 100.0,
      child: ListView(
        children: <Widget>[
          FlatButton.icon(
                  padding: EdgeInsets.only(top: 20.0, left: 25.0, right: 20.0),                  
                   color: Colors.lightGreenAccent[400],                                      
                   label: Text( "CONTINUAR"),                    
                  icon: Icon(Icons.info),                                     
                  onPressed: (){},
                   shape: StadiumBorder(),                   
                      textColor: Colors.black,
                      highlightColor: Colors.white
                      ),
        ],
      ),
    )

     SizedBox(height: 10.0),
        Padding(
          padding: EdgeInsets.only(bottom:50.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0)),
            color: Colors.lightGreenAccent[400],
            ),
            height: 50.0,
            child: Center(child: Text(
              'CONTINUAR',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Armando'
              ),
            ),
            ),
        ), 
        ),*/