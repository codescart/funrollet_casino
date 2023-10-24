import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class FunSpinWheel extends StatefulWidget {
  @override
  _FunSpinWheelState createState() => _FunSpinWheelState();
}

class _FunSpinWheelState extends State<FunSpinWheel> {
  int selected = 0;

  final items = <String>[
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9'

  ];


  @override
  void initState() {
    setState(() {
      selected=0;

    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Stack(

        children: [
          Positioned(child:
          InkWell(
            onTap: (){
              setState(() {
                selected=2;

              });
            },
            child: Center(
              child: Container(
             decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/fun/frame.png")
                       )),
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: FortuneWheel(
                    animateFirst: false,
                    selected: selected,
                    physics: CircularPanPhysics(
                      duration: Duration(seconds: 10),
                      curve: Curves.decelerate,
                    ),

                    styleStrategy: UniformStyleStrategy(
                      textAlign:TextAlign.end,
                      borderColor: Color(0xFFCE0387),
                      color:
                      Color(0xFFE0AA3E),

                      borderWidth: 3,
                    ),
                    indicators: const <FortuneIndicator>[
                      FortuneIndicator(

                          alignment: Alignment
                              .topCenter, // <-- changing the position of the indicator
                          child: Icon(Icons.favorite_border_outlined, color: Color(0xffffd700),)
                      ),
                    ],

                    items: [
                      for (var it in items) FortuneItem(child:
                      Padding(
                        padding:  EdgeInsets.only(left: 52.0),
                        child: RotatedBox(
                            quarterTurns: 1,
                            child: Text(it, style: TextStyle(fontSize: 15, fontWeight:FontWeight.w700,color: Color(
                                0xff000000)),)),
                      )),
                    ],
                    onAnimationEnd: () {
                      print("Value : " + "$selected");
                    },
                  ),
                ),
              ),
            ),
          )),
         
          Center(
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xffe12c76),
              child: Center(child: Text("TRIPLE", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500,color: Colors.white),),

              ),
            ),
          )

        ],
      ),
    );
  }
}
