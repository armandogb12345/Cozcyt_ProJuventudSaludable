import 'package:flutter/material.dart';
import 'package:yo/EjesTransversale.dart';
import 'package:yo/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '#YO',
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
  SubSistema selectedSubSistema;
  Plantel selectedPlantel;
  List<SubSistema> subsitema = [
    SubSistema("         SubSistema"),
  ];
  List<DropdownMenuItem> generateItems(List<SubSistema> subsistema){
    List<DropdownMenuItem> items = [];
    for(var item in subsistema){
      items.add(DropdownMenuItem(child: Text(item.name), value: item,));
    }
    return items;
  }
  List<Plantel> plantel = [
    Plantel("         Plantel"),
  ];
  List<DropdownMenuItem> generateItems2(List<Plantel> plantel){
    List<DropdownMenuItem> items = [];
    for(var item in plantel){
      items.add(DropdownMenuItem(child: Text(item.name), value: item,));
    }
    return items;
  }
 @override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.teal[300],
    body: ListView(
      children: <Widget>[    
        SizedBox(height: 70.0),
        Container(
          height: MediaQuery.of(context).size.height - 250.0, 
          child: Column(     
              children: <Widget>[ 
                Row(
                      crossAxisAlignment: CrossAxisAlignment.center,                    
                      children: [   
                        Expanded(
                          child: _buildSubSistemaItem('assets/presentacion/App.jpg'),
                        ), 
                      ],
                    ) ,
              SizedBox(height: 30.0),
              Container(
                          padding: EdgeInsets.only(
                           top: 1,
                           right: 70,
                           left: 70,                    
                           ),
                           child: DropdownButton(
                          isExpanded: true,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                         value: selectedSubSistema,
                         items: generateItems(subsitema),
                          onChanged: (item){
                            setState((){
                                selectedSubSistema = item;
                            });
                          },
                          ),
                              ),
            SizedBox(height: 20.0),
             Container(
                          padding: EdgeInsets.only(
                           top: 10,
                           right: 70,
                           left: 70,                    
                           ),
                           child: DropdownButton(
                          isExpanded: true,
                          style: TextStyle(fontSize: 20, color: Colors.white),
                         value: selectedPlantel,
                         items: generateItems2(plantel),
                          onChanged: (item){
                            setState((){
                                selectedPlantel = item;
                            });
                          },
                          ),
                              ),
              ],
          ), 
                     /* IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {},
          )*/
        ),        
   SizedBox(height: 0.0),
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
                      right: 35,
                      left: 35,                    
                   ),              
                   color: Colors.lightGreen[900],                                      
                   label: Text( "CONTINUAR"),                    
                  icon: Icon(Icons.info),                                     
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => EjesTransversales()
                    ));
                  },
                   shape: StadiumBorder(),                   
                      textColor: Colors.white,
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

Widget _buildSubSistemaItem(String imgPath2){
  return Padding(
    padding: EdgeInsets.only(left:0.0, right:0.0, top: 50.0),
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
                  tag: imgPath2,
                  child: Image(                    
                    image:AssetImage(imgPath2),
                    fit: BoxFit.cover,
                    height: 150.0,
                    width: 360.0
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
class SubSistema{
  String name;
  SubSistema(this.name);
}
class Plantel{
  String name;
  Plantel(this.name);
}