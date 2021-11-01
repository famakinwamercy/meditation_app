import 'package:flutter/material.dart';
import 'package:meditation_app/components/exercise.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: [
        Container(
          height: size.height * 0.5,
          decoration: BoxDecoration(color: Color(0xFFF5CEB8)),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset("assets/images/meditation 2.png")),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(alignment: Alignment.topRight,
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xFFF28EA1), shape: BoxShape.circle),
                    child: Icon(
                      Icons.line_weight,
                      color: Colors.white,
                    ),
                  ),
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Good Morning",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 30),),
                    SizedBox(height: 10,),
                    Text("Shishir",
                      style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 30),),

                    SizedBox(height: 10,),
                    Container(width: 300,height: 50,
                      decoration: BoxDecoration(color: Colors.white,
                          borderRadius:BorderRadius.circular(20) ),
                      child: TextFormField(decoration: InputDecoration(hintText: "Search",
                          prefixIcon: Icon(Icons.search,color: Colors.black,),border: InputBorder.none),),),
                  ],
                ),SizedBox(height: 20,),
                Expanded(
                  child: GridView.count(crossAxisCount: 2,
                    childAspectRatio: 0.80,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                     Exercise(image:"assets/images/Workout 4.png", title: "Workout 1"),
                      Exercise(image: "assets/images/Workout 2.png", title: "Workout 2"),
                   Exercise(image: "assets/images/Workout 3.png", title: "Workout 3"),
                  Exercise(image: "assets/images/Workout 1.png", title: "Workout 4"),
                  Exercise(image: "assets/images/Workout 5.png", title: "Workout 5"),
                      Exercise(image: "assets/images/Workout 6.png", title: "Workout 6"),

                    ],),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}


