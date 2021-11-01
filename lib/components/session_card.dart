import 'package:flutter/material.dart';
import 'package:meditation_app/constants.dart';

class SessionCard extends StatefulWidget {
  final String sessionName;
  final bool isDone;
  final Function() press;
  const SessionCard({Key? key,
    required this.sessionName, required this.isDone , required this.press}) : super(key: key);

  @override
  _SessionCardState createState() => _SessionCardState();
}

class _SessionCardState extends State<SessionCard> {
  bool isDoneNow = false;

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
        builder: (context, constraint) {
          return Container(
            width: constraint.maxWidth/2- 10,
            //   height: 50,
            decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(15),boxShadow: [
                  BoxShadow(color:kShadowColor,
                      offset: Offset( 0,17),
                      blurRadius: 23,
                      spreadRadius: -13)
                ]),
            child: InkWell(onTap: (){
              setState(() {
          isDoneNow = true;
              });
            },
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height:35,width: 35,
                      decoration: BoxDecoration(color:isDoneNow == false ? Colors.green : Colors.white,
                          border: Border.all(color: kBlueColor),
                          shape: BoxShape.circle),
                      child: Icon(Icons.play_arrow,color: isDoneNow == false ?Colors.white:kBlueColor,)),
                ),
                SizedBox(width: 10,),
                Text(widget.sessionName,
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              ],),
            ),);
        }
    );
  }
}
