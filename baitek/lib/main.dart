import 'package:animate_do/animate_do.dart';
import 'package:baitek/registerpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatefulWidget {
   MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: register(),
      ),
    );
  }
}

class register extends StatelessWidget {
  const register({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(          
      width: double.infinity,  
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 50,),
          FadeInRight(
           duration: Duration(milliseconds: 1500),
          child: Image.network('https://media.giphy.com/media/W1fFapmqgqEf8RJ9TQ/giphy.gif', fit: BoxFit.cover,)),
        FadeInUp(
          duration: Duration(milliseconds: 1000),
          delay: Duration(milliseconds: 500),
          child: Container(
            padding: EdgeInsets.only(bottom: 50, left: 40,top: 40,right: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 177, 251),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60),
                topRight: Radius.circular(60),
              )
            
          
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInUp(
                  duration: Duration(milliseconds: 1000),
                   delay: Duration(milliseconds: 1000),
                  child: Text(" WELCOME " ,style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                  ),),
                ),
                SizedBox(height: 15,),
                FadeInUp(
                  duration: Duration(milliseconds: 1000),
                   delay: Duration(milliseconds: 1000),
                  child: Text("Discover home services with beitek" ,style: TextStyle(
                    fontSize: 15,
                    color: Colors.white
                  ),),
                ),
                SizedBox(height: 20,),
                FadeInUp(
                  duration: Duration(milliseconds: 1000),
                   delay: Duration(milliseconds: 1000),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('/');
                      }, 
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                        padding: EdgeInsets.all(10),
                        ),
                        child: Text("GET STARTED", style: TextStyle(color: Color.fromARGB(255, 73, 74, 73), fontSize: 15),),
                        onPressed: () {
                          Navigator.push(
                            context,
                           MaterialPageRoute(builder: (context) => signIn()),
                          );
                        },
                      ),
                      ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],

      
    ),  
    );
  }
}
