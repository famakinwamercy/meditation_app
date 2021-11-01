import 'package:flutter/material.dart';
import 'package:meditation_app/components/session_card.dart';
import 'package:meditation_app/constants.dart';

class MeditatePage extends StatefulWidget {
  const MeditatePage({Key? key}) : super(key: key);

  @override
  _MeditatePageState createState() => _MeditatePageState();
}

class _MeditatePageState extends State<MeditatePage> {
  bool isDone = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(body:
    SingleChildScrollView(
      child: Stack(children: [
        Container(height: size.height * 0.5,
          decoration: BoxDecoration(color: kBlueLightColor,),
          child: Image.asset("assets/images/meditation 2.png"),),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.1,),
              Text("Meditation", style: TextStyle(color: Colors.black,
                  fontSize: 25, fontWeight: FontWeight.w900),),
              SizedBox(height: 10,),
              Text("3-10 MIN Course",
                style: TextStyle(color: Colors.black45, fontSize: 18,
                    fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("Live happier and healthier by learning the\n"
                  "fundamentals of meditation and\n"
                  " mindfulness", style: TextStyle(
                  color: Colors.black54, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Container(width: 150, height: 50,
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(decoration: InputDecoration(hintText: "Search",
                    prefixIcon: Icon(Icons.search, color: Colors.black,),
                    border: InputBorder.none),),),
              SizedBox(height: 20,),
              Wrap(spacing: 20,runSpacing: 20,
                children: [
                SessionCard(sessionName: "Session 1", isDone: true, press: (){}),
                SessionCard(sessionName: "Session 2", isDone: false, press: (){}),
                SessionCard(sessionName: "Session 3", isDone: true, press: (){}),
                SessionCard(sessionName: "Session 4", isDone: false, press: (){}),
                SessionCard(sessionName: "Session 5", isDone: true, press: (){}),
                SessionCard(sessionName: "Session 6", isDone: true, press: (){}),

              ],),
              SizedBox(height: 20,),
              Text("Meditation",style:
              TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),

              Container(
                width: 300,height: 70,decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(12,),boxShadow: [
                    BoxShadow(color:kShadowColor,
                        offset: Offset( 0,17),
                        blurRadius: 23,
                        spreadRadius: -13)
                  ]),child:
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              Image.asset("assets/images/Workout 4.png"),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment. spaceEvenly,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Basics 2",style:
                          TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17),),

                        ],
                      ),
                      Text("Start your deepen you practice",
                        style:TextStyle(color: Colors.black,fontSize: 14),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,bottom: 20),
                    child: Icon(Icons.lock_outline),
                  )

              ],),)

            ],),
        ),
      ],),
    ),);
  }
}

