import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_eat/secondPage.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFF4545),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 10, right: 10, top: 60, bottom: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(image: AssetImage("images/logo.png"), width: 100,color: Color(0xffFBD288),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(image: AssetImage("images/opt1.png"), width: MediaQuery.of(context).size.width/1.2,),
                    SizedBox(width: 20,),
                    Image(image: AssetImage("images/opt4.png"), width: MediaQuery.of(context).size.width/1.3,),
                    SizedBox(width: 50,),
                    Image(image: AssetImage("images/opt7.png"), width: MediaQuery.of(context).size.width/1.3,),
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
                          Text("Choose\nMeal".toUpperCase(), style: TextStyle(color: Color(0xffFBD288), fontSize: 40, fontWeight: FontWeight.bold),),
                          Text("This is a demo app by © iSAD.\nWe are showcasing what we can do in Flutter!", style: TextStyle(color: Color(0xffFBD288)),)
                        ],
                      )),
                ],
              ),
              SizedBox(height: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Skip", style: TextStyle(color: Color(0xffFBD288), fontSize: 28),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 10,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Color(0xffFBD288),
                          borderRadius: BorderRadius.circular(60)
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: Color(0xffFBD288),
                          borderRadius: BorderRadius.circular(60)
                        ),
                      ).animate().scale(delay: 20.ms).fadeIn(delay: 25.ms),
                      SizedBox(width: 10,),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Color(0xffFBD288),
                            borderRadius: BorderRadius.circular(60)
                        ),
                      ).animate().scale(delay: 10.ms).fadeIn(delay: 15.ms),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color(0xffFBD288),
                      borderRadius: BorderRadius.circular(60)
                    ),
                    child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Secondpage()));
                        },
                        child: Text("Next", style: TextStyle(color: Color(0xffFF4545), fontSize: 20),)),
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
