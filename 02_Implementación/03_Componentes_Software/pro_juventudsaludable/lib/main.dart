import 'package:flutter/material.dart';
import 'package:pro_juventudsaludable/EjesTransversale.dart';
import 'package:pro_juventudsaludable/splash_screen.dart';

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
      home: SplashScreen()
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
  Person selectedPerson;
  List<Person> person = [
    Person("COBAEZ"),
    Person("UAZ"),
  ];
  List<DropdownMenuItem> generateItems(List<Person> person){
    List<DropdownMenuItem> items = [];
    for(var item in person){
      items.add(DropdownMenuItem(child: Text(item.name), value: item,));
    }
    return items;
  }
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
        SizedBox(height: 25.0),
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
                      Container(
                          padding: EdgeInsets.only(
                           top: 8,
                           right: 25,
                           left: 15,                    
                           ),
                           child: DropdownButton(
                          isExpanded: true,
                          style: TextStyle(fontSize: 15, color: Colors.black),
                         value: selectedPerson,
                         items: generateItems(person),
                          onChanged: (item){
                            setState((){
                                selectedPerson = item;
                            });
                          },
                          ),
                              ),
                        Text('         ',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente'),
                          ),
                        Text('         ',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'nombrefuente'),
                          ),
                        _buildSubSistemaItem('assets/Plantel.png', 'Plantel'),
                        Container(
                          padding: EdgeInsets.only(
                           top: 8,
                           right: 25,
                           left: 15,                    
                           ),
                           child: DropdownButton(
                          isExpanded: true,
                          style: TextStyle(fontSize: 15, color: Colors.black),
                         value: selectedPerson,
                         items: generateItems(person),
                          onChanged: (item){
                            setState((){
                                selectedPerson = item;
                            });
                          },
                          ),
                              ),
                      ],
                    ),
                  ),
                ),
             ],
            ),
        ),        
   SizedBox(height: 15.0),
    Container(
      height: 70.0,
      child: ListView(
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.center,              
              children: <Widget>[ 
          FlatButton.icon(  
                  padding: EdgeInsets.only(
                     top: 12,
                     bottom: 15,
                      right: 30,
                      left: 30,                    
                   ),              
                   color: Colors.white,                                      
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
              ]
          ),

        ],
      ),
    )
      ],  
    ), 
  );
  }
}
class Person{
  String name;
  Person(this.name);
}

Widget _buildPortada1(String imgPath){
  return Padding(
    padding: EdgeInsets.only(left:80.0, right:50.0, top: 1.0),
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
                    height: 110.0,
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
                SizedBox(width: 20.0),
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
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {},
          )
        ]
      ),
    ),
  );
}