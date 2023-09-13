
import 'package:baitek/third.dart';
import 'package:flutter/material.dart';
void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: signIn(),
  )
);
class signIn extends StatelessWidget {
  const signIn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
decoration: BoxDecoration( 
  color: Color.fromARGB(255, 250, 177, 251),
),
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
    SizedBox(height: 80,),
    Padding(
padding: EdgeInsets.all(50),
child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
  Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),
  SizedBox(height: 30,),
  Text("for the best service", style: TextStyle(color: Colors.white, fontSize: 18),),
  ],
),
    ),
    SizedBox(height: 20,),
    Expanded(
      child: Container(
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
       
        ),
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
         
            children: <Widget>[
              SizedBox(height: 40,),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(
                    color: Color.fromARGB(255, 234, 178, 249),
                    blurRadius: 30,
                    offset: Offset(0,10)
                  )]
                 ),
                 child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Email or phone number ",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none
                      ),
                    ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: " Password  ",
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none
                      ),
                    ),
                    ),
                  ],
                 ),
              ),
              SizedBox(height: 40,),
              Text("Forgot Password?", style: TextStyle(color: Colors.grey),),
              SizedBox(height: 40,),
              Container(                
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 234, 178, 249)

                ),
                child: Center(
                  child: GestureDetector(onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>thirdpage()));
                  },child: Text("Login", style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold),)),
                 
                         
                ),
              ),
              SizedBox(height: 50,),
              Text("or", style: TextStyle(color: Colors.grey),),
              SizedBox(height: 30,),
              Row(
                children: <Widget> [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 127, 126, 135)
                      ),
                      child: Center(
                      child: Text("GMAIL", style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold),),
                        ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 0, 0, 0)
                      ),
                      child: Center(
                       child: Text("APPLE", style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                  
                ],
              )
            ],
          ),
        ),
      )
      )

  ],
),
      ),

    );
  }
}