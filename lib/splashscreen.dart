import 'package:flutter/material.dart';
import 'HomePage.dart';




class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  Future Delay() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => HomePage())
    );

  }
  @override

  void initState(){
    super.initState();
    Delay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF06b491),
      body: Center(
        child:Image.network("images/tott.jpg",width: 400,height: 400,),


      ),



    );
  }
}
