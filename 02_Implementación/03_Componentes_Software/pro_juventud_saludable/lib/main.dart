import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pro. Juventud Saludable',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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
        SizedBox(height: 25.0),
        Padding(
          padding: EdgeInsets.only(left: 60.0),
          child: Row(
            children:<Widget>[
              Text('Pro. Juventud',
              style: TextStyle(
                fontFamily: 'COZCyT',
                color:Colors.white,
                fontWeight: FontWeight.bold,
                fontSize:25.0)),
            SizedBox(width: 25.0),
            Text('Saludable',
            style: TextStyle(
              fontFamily: 'COZCyT',
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25.0))
            ],
          ),
        ),
        SizedBox(height: 40.0),

      ],
    ),
  );
}
}
