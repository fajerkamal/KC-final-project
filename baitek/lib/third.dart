
import 'package:url_launcher/url_launcher.dart';
import 'package:baitek/cleaningdetails.dart';
import 'package:flutter/material.dart';
void main() => runApp(
  MaterialApp(
 debugShowCheckedModeBanner: false,
 home: thirdpage(),
  ),
);

 class thirdpage extends StatefulWidget {

  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  // creating static data in lists
  var service = [
    "Cleaning",
    "Electrician",
    "Painter",
  ];

   var serviceColors = [
    Color(0xFFFFCF2F),
    Color.fromARGB(246, 243, 134, 249),
    Color(0xFFFFCF2F),
  ];
   var icon = [
  IconButton(icon: Icon(Icons.cleaning_services),onPressed:() {
  
  
  },),
  IconButton(icon: Icon(Icons.electrical_services),onPressed:() {
    
  },),
  IconButton(icon: Icon(Icons.brush_outlined),onPressed:() {
    
  },),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 250, 177, 251),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children : [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                      ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                      ),
                  ],                  
                ),
                SizedBox(height: 20,),
                Padding( 
                padding: EdgeInsets.only(left: 3,bottom: 15,),
                child: Text(
                  "Hi, choose how you want to be helped",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                    wordSpacing: 2,
                    color: Colors.white
                  ),
                ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 5,bottom: 20,),
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                    color: Colors.white,
                  

                  ),
                 child: TextFormField(
                      decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "search...",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                       prefixIcon: Icon(
                        Icons.search, size: 25,
                        ),
                      ),
                      ),
                ),
              ],
            ),
          ),
      Padding( 
      padding: EdgeInsets.only(top: 20,left: 15,right: 15),
      child: Column(
        children: [
        GridView.builder(
          itemCount: service.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
             childAspectRatio: 1.1,
          ),
        itemBuilder: (context, index){
          return Column(
            children: [
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: serviceColors[index],
                  shape: BoxShape.circle
                ),
                child: InkWell(
                  child: Center(child: icon[index],
                  
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Cleaning()));
                  },
                ),
              ),
             SizedBox(height:10 ,),
             Text(
              service[index],
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black.withOpacity(0.7)
              ),
             )
            ],
          );
        }
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("Design your home", style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.w600,
            ),
            ),
          Text("See All", style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600,color: Color.fromARGB(255, 250, 177, 251),
            ),
            ),

           





          ],
          ),
          SizedBox(height: 20,),

           Column(
             children: [
               Row(
                  
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          launch("http://www.planyourroom.com");
                        },
                        child: Container(
                          
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 250, 177, 251),
                            borderRadius: BorderRadius.circular(15)
                             
                          ),
                        ),
                      ),
                    ),
          
                    
          
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 177, 251),
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ),
                    
          
                    
                  ],
                ),


                Row(
                  
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 177, 251),
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ),
          
                   
                    
          
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 250, 177, 251),
                          borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ),
          
                    
          
          
                    
          
                    
                  ],
                ),






             ],
           ),
          
          
      ],)
      ),
        ],
      ),
    );
  }
}