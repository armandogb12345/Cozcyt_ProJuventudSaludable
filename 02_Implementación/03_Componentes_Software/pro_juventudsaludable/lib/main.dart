import 'package:flutter/material.dart';
import 'package:pro_juventudsaludable/EjesTransversale.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pro. Juventud Saludable',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Pro. Juventud Saludable'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

 

class _MyHomePageState extends State<MyHomePage> {
 @override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Color(0xFF00B0FF),
    body: ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top:15.0, left: 10.0),
          child: Row(
            children: <Widget>[            
          Container(
            width: 125.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ]
            ),
          )
          ],),
        ),
        SizedBox(height: 10.0),
        Padding(
          padding: EdgeInsets.only(left: 40.0),
          child: Row(
            children:<Widget>[
              Text('Pro. Juventud',
              style: TextStyle(
                fontFamily: 'COZCyT',
                color:Colors.white,
                fontWeight: FontWeight.bold,
                fontSize:25.0)),
            SizedBox(width: 10.0),
            Text('Saludable',
            style: TextStyle(
              fontFamily: 'COZCyT',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25.0))
            ],
          ),
        ),
        SizedBox(height: 30.0),
        
        Container(
          height: MediaQuery.of(context).size.height - 185.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(100.0)),
            ),     
            child: ListView(              
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[                                                                                                         
                  Padding(
                  padding: EdgeInsets.only(top: 5.0),                  
                  child: Container(
                    height: MediaQuery.of(context).size.height - 200.0,
                    child: ListView(
                      children: [    
                        _buildPortada1('assets/1.jpg'),                      
                        _buildSubSistemaItem('assets/subsistema.png', 'SubSistema'),
                        _buildSubSistemaItem2(),
                        _buildSubSistemaItem('assets/Plantel.png', 'Plantel'),
                        _buildSubSistemaItem3(),
                      ],
                    ),
                  ),
                ),
             ],
            ),
        ),
       SizedBox(height: 12.0),            
    Container(
      height: 45.0,
      child: ListView(
        children: <Widget>[
          FlatButton.icon(                
                   color: Colors.lightGreenAccent[400],                                      
                   label: Text( "CONTINUAR"),                    
                  icon: Icon(Icons.info),                                     
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => EjesTransversales()
                    ));
                  },
                   shape: StadiumBorder(),                   
                      textColor: Colors.black,
                      highlightColor: Colors.white
                      ),
        ],
      ),
    )
      ],  
    ), 
  );
  }
}

Widget _buildPortada1(String imgPath){
  return Padding(
    padding: EdgeInsets.only(left:80.0, right:50.0, top: 5.0),
    child: InkWell(
      onTap: () {
        },
      child: Row(
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
                    width: 170.0
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

Widget _buildSubSistemaItem(String imgPath, String subsistema){
  return Padding(
    padding: EdgeInsets.only(left:10.0, right:10.0, top: 1.0),
    child: InkWell(
      onTap: () {
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
                    height: 70.0,
                    width: 70.0
                  )
                ),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text(
                      subsistema,
                      style: TextStyle(
                        fontFamily: 'LABSOL',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    ]
                )
              ]
            )
          ),
          IconButton(
            icon: Icon(Icons.vignette),
            color: Colors.black,
            onPressed: () {},
          )
        ]
      ),
    ),
  );
}
Widget _buildSubSistemaItem2(){
  return Padding(
    padding: EdgeInsets.only(left:255.0, right:10.0, top: 13.0),
    child: InkWell(
      onTap: () {
        },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[         
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {},
          )
        ]
      ),
    ),
  );
}
Widget _buildSubSistemaItem3(){
  return Padding(
    padding: EdgeInsets.only(left:255.0, right:10.0, top: 13.0),
    child: InkWell(
      onTap: () {
        },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[         
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {},
          )
        ]
      ),
    ),
  );
}

