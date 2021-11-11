import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_splash_screen/main.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
          backgroundColor:Colors.white,
          appBar: AppBar(
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white,statusBarBrightness: Brightness.dark,statusBarIconBrightness: Brightness.dark),
            // brightness: Brightness.dark,
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(onPressed: (){},
             icon:Icon(Icons.arrow_back_ios_new,color: Colors.black,), 
             ),
            
            title:Text("Back",style: TextStyle(color: Colors.black),)
          
          ),
    body: SingleChildScrollView(
      child:   Container(
      
      child: Column(
      
        crossAxisAlignment: CrossAxisAlignment.start,
      
        children: [
      
        SizedBox(height: 10,),
      
       Padding(padding: EdgeInsets.only(top: 20,left: 40),
      
       child: Container(
      
         child: Column(
      
           crossAxisAlignment: CrossAxisAlignment.start,
      
           children: [
      
             Container(
               height: 100,
               width: 100,
               decoration: BoxDecoration(
                 image: DecorationImage(image: AssetImage("assets/images/c.jpg"))
               ),
      
              //  child: CircleAvatar(
      
              //    radius: 50,
      
              //    backgroundImage: AssetImage("assets/images/c.jpg")
      
              //  ),
      
             ),
      
             SizedBox(height: 15,),
      
             Container(
      
               child:Text("Proceed with your ",style: TextStyle(fontSize: 24),)
      
             ),
      
             SizedBox(height: 5,),
      
             Container(
      
               child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      
             ),
      
             SizedBox(height: 80,),
      
             Text("Username",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
      
             Container(
      
               margin: EdgeInsets.only(right: 40),
      
               child: TextFormField(
      
                 decoration: InputDecoration(
      
                   hintText: "DURA0045",
                   
                   hintStyle: TextStyle(color: Colors.grey[400]),
                   suffixIcon: Icon(Icons.person)
      
                 ),
      
      
      
               ),
      
             ),
      
              SizedBox(height: 40,),
      
              Text("Password",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),),
      
              Container(
      
               margin: EdgeInsets.only(right: 40),
      
               child: TextFormField(
      
                 decoration: InputDecoration(
      
                   
      
                   hintText: "*********",
                   hintStyle: TextStyle(color: Colors.grey[400]),
                   suffixIcon: Icon(Icons.vpn_key_outlined)
      
                 ),
      
      
      
               ),
      
             ),
             SizedBox(height: 50,),
    
             Container(
               margin:EdgeInsets.only(right: 40),
               width: double.infinity,
               height: 50,
               child: RaisedButton(
                 child: Text("Login",style: TextStyle(color: Colors.white),),
                 onPressed: (){
                   print("Button click");
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                 },
                 color: Colors.redAccent,
                 
                 ),
             ),
             
             Container(
               margin: EdgeInsets.only(right:40),
               child: Center(
                 child: TextButton(
                   onPressed: (){}, 
                   child:Text("Forgot Password?",style: TextStyle(color: Colors.grey[500]),)
                   ),
               ),
             )
      
           ],
      
         ),
      
       ),
      
       )
      
      ],),
      
      ),
    )
        
    );
  }
}
