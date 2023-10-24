import 'package:flutter/material.dart';

import 'package:funrollet_casino/triplefun/Tripal_fun_number_list.dart';
import 'package:funrollet_casino/triplefun/Tripelfun_CasinoBoard.dart';
import 'package:funrollet_casino/triplefun/Triple_fun_Upper.dart';
import 'package:funrollet_casino/triplefun/spinwheelscreen.dart';


class Triple_fun_RoulleteHome extends StatefulWidget {
  const Triple_fun_RoulleteHome({Key? key}) : super(key: key);

  @override
  State<Triple_fun_RoulleteHome> createState() => _Triple_fun_RoulleteHomeState();
}

class _Triple_fun_RoulleteHomeState extends State<Triple_fun_RoulleteHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/fun/triple_background.png'),
                  fit: BoxFit.fill
                )
            ),
            child: Container(
              child: Stack(
                children: [

              Positioned(
                  bottom: MediaQuery.of(context).size.height*0.20,
                  left: MediaQuery.of(context).size.width*0.40,
                  child: Container(
                      height: 30,
                      padding: EdgeInsets.only(left: 10, right: 10,top: 2, bottom: 2),

                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/fun/b.png'),
                            fit: BoxFit.fill
                        ),

                      ),
                      child: Center(child: Text('Last 5 - 25|86|12|65|68', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 10),))),),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height*0.15,
                    left: MediaQuery.of(context).size.width*0.43,
                    child: Container(
                        height: 20,
                        width: 80,
                        padding: EdgeInsets.only(left: 10, right: 10,top: 2, bottom: 2),

                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/fun/single.png'),
                              fit: BoxFit.fill
                          ),

                        ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height*0.12,
                    left: MediaQuery.of(context).size.width*0.35,
                    child:
                  Container(

                      height: 200,
                      width: 200,
                      child: SpinWheel()),),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //SizedBox(height: MediaQuery.of(context).size.height*0.13,),
                      Triple_fun_Upper(),

                      Tripelfun_CasinoBoard(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Container(
                                height: 25,
                                width: 150,
                                padding: EdgeInsets.only(left: 10, right: 10,top: 2, bottom: 2),

                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/fun/b.png'),
                                      fit: BoxFit.fill
                                  ),

                                ),
                                child: Center(child: Text('Take', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 10),))),
                          ),
                          Tripal_fun_number_list(),


                          InkWell(
                            child: Container(
                                height: 25,
                                width: 150,
                                padding: EdgeInsets.only(left: 10, right: 10,top: 2, bottom: 2),

                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/fun/b.png'),
                                      fit: BoxFit.fill
                                  ),

                                ),
                                child: Center(child: Text('Bet Ok', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 10),))),
                          ),
                        ],
                      ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         InkWell(
                           child: Container(
                               height: 25,
                               width: 60,
                               padding: EdgeInsets.only(left: 10, right: 10,top: 2, bottom: 2),

                               decoration: BoxDecoration(
                                 image: DecorationImage(
                                     image: AssetImage('assets/fun/b.png'),
                                     fit: BoxFit.fill
                                 ),

                               ),
                               child: Center(child: Text('0', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 10),))),
                         ),
                         InkWell(
                           child: Container(
                             width: 450,
                               padding: EdgeInsets.only(left: 30, right: 30,top: 2, bottom: 2),

                               decoration: BoxDecoration(
                                   border: Border.all(
                                     color: Color(0xffffd700),
                                     width: 2 ,
                                   ),
                                   color: Colors.black,
                                   borderRadius: BorderRadius.only(topLeft:Radius.circular(50),
                                       topRight:Radius.circular(50)
                                   )
                               ),
                               child: Center(child: Text('Bet Time Over', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 10),))),
                         ),
                         InkWell(
                           child: Container(
                               height: 25,
                               width: 70,
                               padding: EdgeInsets.only(left: 10, right: 10,top: 2, bottom: 2),

                               decoration: BoxDecoration(
                                 image: DecorationImage(
                                     image: AssetImage('assets/fun/b.png'),
                                     fit: BoxFit.fill
                                 ),

                               ),
                               child: Center(child: Text('Exit', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 10),))),
                         ),
                       ],
                     ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
