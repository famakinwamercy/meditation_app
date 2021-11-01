import 'package:flutter/material.dart';
import 'package:meditation_app/screens/home_screen.dart';
import 'package:meditation_app/screens/meditate_page.dart';


class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  final screens = [
    HomeScreen(),
    MeditatePage(),
     Center(child: Text("Settings",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),)
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap:(index){
          setState((){
            currentIndex =index;
          });

        },

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              title: Text("Today")),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("Settings"))
        ],
      ),);
  }
}
