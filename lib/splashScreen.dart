import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/HomeScreen.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.light,
              statusBarColor: Colors.red),
            // brightness:Brightness.dark,
            backgroundColor: Colors.red,
            elevation: 0,
          ),
          backgroundColor: Colors.red,
          body: Center(
            child: Container(
              color: Colors.red,
              child: Column(
                children: [
                  SizedBox(height: 200),
                  Container(
                   
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: AssetImage("assets/images/c.jpg"),
                    ),
                    
                  ),
                  SizedBox(height: 50,),
                  Container(
                    child: Text("Durar HR",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                  ),
                Container(
                  child: Text("The Complete HR Solution",style: TextStyle(color: Colors.grey[300]),),
                ),
                SizedBox(height: 30,),
                Container(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                    // semanticsLabel: "helo",
                  ),
                )
                ],
              ),
            ),
          ),
        
    );
  }
}