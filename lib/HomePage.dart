import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:toters/rest.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _selectedTab = 0;
  final List<String> listImages = [
    "images/tot1.JPG",
    "images/black.PNG",
    "images/red.JPG",
    "images/purple.JPG",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leadingWidth: 80,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("images/filter.png",height: 30,width: 30,),
            Icon(Icons.notifications_none_sharp,color: Colors.black.withOpacity(0.5),size: 30,),
            
          ],
        ),

        actions: [
          Row(
            children: [
              Padding(padding: EdgeInsets.only(right: 5,top: 15),
              child:  Image.asset("images/arrow.png",height: 20,width:20),),



              Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 5,left: 5),
                  child:  Text("توصيل الى",style: TextStyle(
                      fontSize: 15,
                      fontFamily: "ElMessiri-Medium",
                      color: Colors.black
                  ),),),

                 Padding(padding: EdgeInsets.only(right: 11),
                   child:
                   Text("بغداد,العراق",style: TextStyle(
                       fontSize: 16,
                       fontFamily: "ElMessiri-Medium",
                       fontWeight: FontWeight.bold,
                       color: Colors.black
                   ),),
                 )


              ],)





            ],
          )

        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Padding(padding: EdgeInsets.all(10),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Row(
                  children: [
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 10),
                          child: Text("نقطة",style: TextStyle(
                              fontSize: 15,
                              fontFamily: "ElMessiri-Medium",
                              color: Colors.black
                          ),),
                        ),

                        Padding(padding:EdgeInsets.only(bottom: 10),
                            child:Icon(Icons.arrow_back,color: Colors.black,size: 20,)),
                        

                      ],
                      
                    ),

                    SizedBox(width: 10,),
                    Text("3.8K",style: TextStyle(
                        fontSize: 35,
                         // fontFamily: "ElMessiri-Medium",
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),

                  ],
                ),
                SizedBox(width: 3,),

                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 60),
                      child:
                      Row(
                        children: [

                          Icon(Icons.info_outline,color: Colors.green,size: 28,),
                          SizedBox(width: 5,),
                          Text("الفئة الخضراء",style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              fontFamily: "ElMessiri-Medium",
                              color: Colors.green
                          ),),
                        ],
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(left: 22),
                      child: Row(
                        children: [
                          Container(
                            height: 5,width: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            height: 5,width: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            height: 5,width: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            height: 5,width: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            height: 5,width: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            height: 5,width: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          SizedBox(width: 5,),
                          Container(
                            height: 5,width: 20,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)
                            ),
                          ),
                          SizedBox(width: 5,),
                          Padding(padding: EdgeInsets.only(right: 0),
                            child: Container(
                              height: 5,width: 20,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),

                    Padding(padding: EdgeInsets.only(left: 55),
                      child: Text("تبقى 9 طلبات اضافية لغاية",style:
                        TextStyle(
                          fontSize: 15,
                          fontFamily: "ElMessiri-Medium",
                          color: Colors.grey,
                        ),),
                    ),

                    Padding(padding: EdgeInsets.only(right: 4),
                      child: Text("اغسطس 31 للترقية الى الفئة الذهبية",style:
                      TextStyle(
                        fontSize: 15,
                        fontFamily: "ElMessiri-Medium",
                        color: Colors.grey,
                      ),),
                    ),
                  ],
                ),
                

              ],
            ),
          ),

          SizedBox(height: 10,),

          CarouselImages(
            scaleFactor: 0.3,
            listImages: listImages,
            height: 200.0,
            borderRadius: 15.0,
            // cachedNetworkImage: true,
            verticalAlignment: Alignment.topCenter,
            onTap: (index){
              print('Tapped on page $index');
            },
          ),

          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card("images/to1.jpg"),
              Card("images/to2.jpg"),
              GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const rest()),
                    );

                  },
                  child: Card("images/bur.jpg")),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card("images/to4.jpg"),
              Card("images/to5.jpg"),
              Card("images/to6.jpg"),
            ],
          ),

          SizedBox(height: 30,),
          Container(
            height: 10,width: 400,
            color: Colors.grey.withOpacity(0.3),
          ),

          Padding(padding: EdgeInsets.only(top: 10,right: 13,left: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(padding: EdgeInsets.only(bottom: 25),
                    child: Icon(Icons.chevron_left_outlined,color: Colors.green,size: 35,)),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("خصومات اسبوعية",style: TextStyle(
                      fontFamily: "ElMessiri-Medium",
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),),

                    Text("احصل على خصم 50% على مطاعم هذا الاسبوع",style: TextStyle(
                        fontFamily: "ElMessiri-Medium",
                        fontSize: 15,
                        color: Colors.grey
                    ),),

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



  Container Card(String pic){
    return Container(
      width: 90,height: 95,
      decoration: BoxDecoration(
        boxShadow:[BoxShadow(
          color: Colors.grey,
          blurRadius: 15,
          spreadRadius: 3,
        )],
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(pic),
          fit: BoxFit.cover
        ),
      ),



    );



  }


}
