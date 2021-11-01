import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  final String image;
  final String title;
  const Exercise({Key? key, required this.image, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      //  height: 100,width: 100,
        decoration: BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child:Column(children: [ Spacer(),
          Image.asset(image),Spacer(),
          Text(title,style: TextStyle(fontSize: 15,
              fontWeight: FontWeight.bold),)
        ],)
    );
  }
}
