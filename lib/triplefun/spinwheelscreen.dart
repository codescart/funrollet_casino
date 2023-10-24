import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class SpinWheel extends StatefulWidget {
  @override
  _SpinWheelState createState() => _SpinWheelState();
}

class _SpinWheelState extends State<SpinWheel> {
  int selected = 0;
  int selected2 = 0;
  int selected3 = 0;
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
      selected2=0;
      selected3=0;
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
                selected2=7;
                selected3=5;
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
          Positioned(child: Center(
            child: Container(
              height: 115,
              child: FortuneWheel(
                animateFirst: true,
                selected: selected2,
                physics: CircularPanPhysics(
                  duration: Duration(seconds: 10),
                  curve: Curves.decelerate,
                ),

                styleStrategy: UniformStyleStrategy(
                  textAlign:TextAlign.end,
                  borderColor: Color(0xFFBB1A82),
                  color: Color(0xFF041FA2),
                  borderWidth: 2,
                ),
                indicators: const <FortuneIndicator>[
                  FortuneIndicator(

                      alignment: Alignment
                          .topCenter, // <-- changing the position of the indicator
                      child: Icon(Icons.favorite_border_outlined, color: Color(0xffffd700),)
                      // Text('<^>', style: TextStyle(fontSize: 10, color:Colors.pink,fontWeight: FontWeight.bold),)
                  ),
                ],

                items: [
                  for (var it in items) FortuneItem(child:
                  Padding(
                    padding:  EdgeInsets.only(left: 33.0),
                    child: RotatedBox(
                        quarterTurns: 1,
                        child: Text(it, style: TextStyle(fontSize: 14, fontWeight:FontWeight.w700,color: Color(
                            0xffffffff)),)),
                  )),
                ],
                onAnimationEnd: () {
                  print("Value : " + "$selected2");
                },
              ),
            ),
          )),


          Positioned(

              child: Center(
                child: Container(
                  height: 75,
                  child: FortuneWheel(
                    animateFirst: true,
                    selected: selected3,
                    physics: CircularPanPhysics(
                      duration: Duration(seconds: 10),
                      curve: Curves.decelerate,
                    ),

                    styleStrategy: UniformStyleStrategy(
                      textAlign:TextAlign.end,
                      borderColor: Color(0xFF963A76),
                      color: Color(0xFF0BD727),
                      borderWidth: 1.5,
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
                        padding:  EdgeInsets.only(left: 15.0),
                        child: RotatedBox(
                            quarterTurns: 1,
                            child: Text(it, style: TextStyle(fontSize: 13, fontWeight:FontWeight.w700,color: Color(
                                0xff000000)),)),
                      )),
                    ],
                    onAnimationEnd: () {
                      print("Value : " + "$selected3");
                    },
                  ),
                ),
              ),),
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
