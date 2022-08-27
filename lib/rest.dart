import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:toters/HomePage.dart';

class rest extends StatefulWidget {
  const rest({Key? key}) : super(key: key);

  @override
  State<rest> createState() => _restState();
}

class _restState extends State<rest> {
  var _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 300,width: 400,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/99grill.jpg"),
                fit: BoxFit.cover
              )
            ),
            child: Stack(
              children: [
                Positioned(
                    top:10,left: 10,
                    child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomePage()),
                          );

                        },

                        child: Icon(Icons.chevron_left_outlined,size: 40,color: Colors.green,)))
                ,
                Positioned(
                    right:20,top: 230,
                    child: Container(
                      height: 40,width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 20,
                            spreadRadius: 2,
                            color: Colors.grey
                          )
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 2,),
                          Text("32-22",style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold),),
                          Text("دقيقة",style: TextStyle(fontSize: 15,fontFamily: "ElMessiri-Medium",color: Colors.black),)
                        ],
                      ),
                    ))

              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(padding: EdgeInsets.only(top: 15,right: 260),
          child:
          Text("99 Grill",style: TextStyle(fontSize: 30,fontFamily: "Comfortaa-Bold"),)
          ),

          Padding(padding: EdgeInsets.only(top: 10,right: 20),
              child:
              Text("we offer the must delicious burgers with our",style: TextStyle(fontSize: 15,fontFamily: "Comfortaa-Bold",color: Colors.grey),)
          ),
          Padding(padding: EdgeInsets.only(top: 3,right: 55),
              child:
              Text("special and unique Ammerican sausces.",style: TextStyle(fontSize: 15,fontFamily: "Comfortaa-Bold",color: Colors.grey),)
          ),
          SizedBox(height: 30,),

          Padding(padding: EdgeInsets.only(left: 10),
            child: Row(

              children: [
                Container(
                  height: 30,width: 150,
                  decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5),
                  ),
                  child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: EdgeInsets.only(top: 3),
                            child:
                            Text("10% cashback", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold,fontFamily: "Comfortaa-Bold"),),
                          ),


                          Icon(Icons.attach_money,color: Colors.orange,size: 20,)
                        ],
                      ),

                ),
                SizedBox(width: 10,),
                Container(
                height: 30,width: 130,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding:EdgeInsets.only(top: 3,right: 5),child: Text("Earn Points", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,fontFamily: "Comfortaa-Bold"),)),
                        Icon(Icons.add_circle_outline_outlined,color: Colors.blue,size:20 ,)
                      ],

                    )



                )
              ],
            ),
          ),

          SizedBox(height: 25,),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 15,bottom: 2),

                  child: Text("4.8", style: TextStyle( fontWeight: FontWeight.bold, fontSize: 45),)),
              SizedBox(width: 10,),
              Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, size: 30,color: Colors.green,),
                      Icon(Icons.star, size: 30,color: Colors.green,),
                      Icon(Icons.star, size: 30,color: Colors.green,),
                      Icon(Icons.star, size: 30,color: Colors.green,),
                      Icon(Icons.star, size: 30,color: Colors.grey,),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(left: 15),

                      child: Text("Based on 1200 rating",style: TextStyle( fontSize: 15, color: Colors.grey,fontFamily: "Comfortaa-Bold"), )),

                ],
              ),

              SizedBox(width: 90,),
              Icon(Icons.chevron_right,color: Colors.green,size: 35,)
            ],
          ),
          SizedBox(height: 30,),
          Container(
            height: 10,width: 400,
            color: Colors.grey.withOpacity(0.3),
          ),
          SizedBox(height: 10,),

          Row(
            children: [
              SizedBox(width: 10,),
              Text("Adnan", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "Comfortaa-Bold"),),
              SizedBox(width: 10,),
              Icon(Icons.star, size: 20,color: Colors.green,),
              Icon(Icons.star, size: 20,color: Colors.green,),
              Icon(Icons.star, size: 20,color: Colors.green,),
              Icon(Icons.star, size: 20,color: Colors.green,),
              Icon(Icons.star, size: 20,color: Colors.green,),
            ],
          ),
SizedBox(height: 5,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("الطعم رهييييب حبيته كلش والتوصيل سرريع ", style: TextStyle(color: Colors.grey,fontFamily: "ElMessiri-Medium",fontSize: 15),),

             Padding(padding: EdgeInsets.only(left: 130),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.end,
                 children: [


                   Text("read more... ", style: TextStyle(color: Colors.green,fontFamily: "ElMessiri-Medium",fontSize: 15),),
                   Text(" ان شاء الله مو اخر مرة كلش ", style: TextStyle(color: Colors.grey,fontFamily: "ElMessiri-Medium",fontSize: 15),),
                 ],

               ),
             ),


            ],
          ),
          SizedBox(height: 10,),
          Container(
            height: 5,width: 400,
            color: Colors.grey.withOpacity(0.3),
          ),
          SizedBox(height: 10,),
          Padding(padding: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Row(
                 children: [
                   Icon(Icons.star, size: 30,color: Colors.grey,),
                   Icon(Icons.star, size: 30,color: Colors.grey,),
                   Icon(Icons.star, size: 30,color: Colors.grey,),
                   Icon(Icons.star, size: 30,color: Colors.grey,),
                   Icon(Icons.star, size: 30,color: Colors.grey,),
                 ],
               ),
                Row(
                  children: [
                    Text("اكتب تعليق", style: TextStyle(color: Colors.green,fontFamily: "ElMessiri-Medium",fontSize: 15),),
SizedBox(width: 5,),
                    Icon(Icons.comment,color: Colors.green,size: 25,)

                  ],
                )

              ],
            ),
          ),










        ],
      ),

      bottomNavigationBar: SalomonBottomBar(
        unselectedItemColor: Colors.deepPurple,
        currentIndex: _selectedTab,
        onTap: (position){
          setState(() {
            _selectedTab = position;
          });
        },
        items: [
          SalomonBottomBarItem(
              selectedColor: Colors.green,
              title: const Text('رئيسية'),
              icon: const Icon(Icons.home)
          ),
          SalomonBottomBarItem(
              selectedColor: Colors.green,
              title: const Text('طلبات'),
              icon: const Icon(Icons.restaurant_menu_outlined)
          ),
          SalomonBottomBarItem(
              selectedColor: Colors.green,
              icon: const Icon(Icons.search),
              title: const Text("بحث")
          ),

          SalomonBottomBarItem(
              selectedColor: Colors.green,
              title: const Text('حساب'),
              icon: const Icon(Icons.person)
          )
        ],
      ),



    );
  }
}
