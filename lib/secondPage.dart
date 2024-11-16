import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_eat/firstPage.dart';
import 'package:go_eat/thirdPage.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff859F3D),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 10, right: 10, top: 60, bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: (){
                        Navigator.pop(context, MaterialPageRoute(builder: (context) => Firstpage()));
                      },
                      child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                  Image(image: AssetImage("images/logo.png"), width: 100,color: Colors.white,),
                  SizedBox(width: MediaQuery.of(context).size.width/16,)
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(image: AssetImage("images/opt2.png"), width: MediaQuery.of(context).size.width/1.5,),
                    SizedBox(width: 20,),
                    Image(image: AssetImage("images/opt3.png"), width: MediaQuery.of(context).size.width/1.3,),
                    SizedBox(width: 50,),
                    Image(image: AssetImage("images/opt5.png"), width: MediaQuery.of(context).size.width/1.4,),
                  ].animate(interval: 500.ms).fade(duration: 800.ms).rotate(duration: 1000.ms),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("earn\npoints".toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                          Text("This is a demo app by © iSAD.\nWe are showcasing what we can do in Flutter!", style: TextStyle(color: Colors.white70),)
                        ],
                      )),
                ],
              ),
              SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Skip", style: TextStyle(color: Colors.white, fontSize: 28),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60)
                        ),
                      ).animate().scale(delay: 20.ms).fadeIn(delay: 25.ms),
                      SizedBox(width: 10,),
                      Container(
                        height: 10,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60)
                        ),
                      ).animate().scale().fadeIn(),
                      SizedBox(width: 10,),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(60)
                        ),
                      ).animate().scale(delay: 10.ms  ).fadeIn(delay: 15.ms),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(60)
                    ),
                    child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Thirdpage()));
                        },
                        child: Text("Next", style: TextStyle(color: Color(0xff859F3D), fontSize: 20),)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
