import 'package:flutter/material.dart';
import 'package:funrollet_casino/FUN_casino/FunCasinoUpper.dart';
import 'package:funrollet_casino/FUN_casino/Fun_CasinoBoard.dart';
import 'package:funrollet_casino/FUN_casino/fun_casino_spin_wheel.dart';


class RoulleteHome extends StatefulWidget {
  const RoulleteHome({Key? key}) : super(key: key);

  @override
  State<RoulleteHome> createState() => _RoulleteHomeState();
}

class _RoulleteHomeState extends State<RoulleteHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              color: Colors.red,
                image: DecorationImage(
                  image: AssetImage('assets/fun/casino_fun.png',),fit: BoxFit.fill,
                )
            ),
            child: Stack(
              children: [
                Positioned(
                  top: MediaQuery.of(context).size.height*0.01,
                  left: MediaQuery.of(context).size.width*0.18,
                  child:
                  Container(

                      height: 300,
                      width: 400,
                      child: FunSpinWheel()),),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RouletUpper(),
                    SizedBox(
                     height: MediaQuery.of(context).size.height*0.1,
                    ),

                    RouletteLayout(),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       InkWell(
                         child: Container(
                             height: 25,
                             width: 70,
                             padding: EdgeInsets.only(left: 10, right: 10,top: 4, bottom: 4),

                             decoration: BoxDecoration(
                               image: DecorationImage(
                                   image: AssetImage('assets/fun/b.png'),
                                   fit: BoxFit.fill
                               ),

                             ),
                             child: Center(child: Text('0', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),))),
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
                             padding: EdgeInsets.only(left: 10, right: 10,top: 4, bottom: 4),

                             decoration: BoxDecoration(
                               image: DecorationImage(
                                   image: AssetImage('assets/fun/b.png'),
                                   fit: BoxFit.fill
                               ),

                             ),
                             child: Center(child: Text('Exit', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 15),))),
                       ),
                     ],
                   ),

                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
