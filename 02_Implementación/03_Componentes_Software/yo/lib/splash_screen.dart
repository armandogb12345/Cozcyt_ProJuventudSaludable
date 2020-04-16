import 'package:flutter/material.dart';
import 'package:yo/main.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();

    _mockCheckForSession().then(
      (status){
        if(status){
          _navigateToHome();
        }else{
          _navigateToHome();
        }
      }
    );
  }
  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 3000),(){});

    return true;
  }
  void _navigateToHome(){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => MyHomePage()
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Opacity(
              opacity: 0.5,
              child: Image.asset('assets/presentacion/FONDO.png')
              ),
              Shimmer.fromColors(
                baseColor: Color(0XFF7F00FF),
                highlightColor: Color(0XFFE100FF),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                    child: Text(
                      "",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: 'Pacifico',
                        shadows: <Shadow>[
                          Shadow(
                            blurRadius: 18.0,
                            color: Colors.black,
                            offset: Offset.fromDirection(120,0)
                          )
                        ]
                         ),
                    ),
                ),
              )
          ]
        ),
      ),
    );
  }
}