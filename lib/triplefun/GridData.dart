
import 'dart:io';

import 'package:flutter/material.dart';

class GridData extends StatefulWidget {
  final String nums;
   GridData({Key? key, required this.nums}) : super(key: key);

  @override
  State<GridData> createState() => _GridDataState();
}

class _GridDataState extends State<GridData> {



  static const List data= <String>["00","01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99"];
  static const List batval= <String>['1','5','10','50','100','500','1000','5000'];
  static const List colord= <Color>[Color(0xff009316), Color(0xff0741d0), Color(0xff6c0303), Color(0xffd9b149), Color(0xff069a7f), Color(0xffbb1a82),
    Color(0xff9d4303), Color(0xff6581f8)
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      // height: MediaQuery.of(context).size.height*0.325,
      // width: MediaQuery.of(context).size.width*0.73,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 10,
            childAspectRatio: 0.90,
          ),
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {


            return InkWell(
              onTap: (){
                showDialog(
                    context: context,
                    builder: (ctx) =>

                        AlertDialog(
                          backgroundColor: Colors.transparent,
                          title: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffffd700),
                                    width: 4,
                                  ),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.all(Radius.circular(50))
                              ),
                              child: Center(child: Text('Bet On :  '+data[index].toString(), style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),))),
                          content: Container(
                            height: 150,
                            width: 220,
                            child: GridView.builder(
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4),
                                itemCount: batval.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return InkWell(
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: Container(

                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xffffd700),
                                              width: 4,
                                            ),
                                            borderRadius: BorderRadius.all(Radius.circular(50))
                                        ),

                                        child: CircleAvatar(
                                          backgroundColor: colord[index],
                                          radius: 10,
                                          child: Text(widget.nums+batval[index].toString()),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                            ),
                          ),
                        ));


              },
              child: Container(
                decoration: BoxDecoration(
                  // border: Border.all(
                  //   color: Color(0xffffd700),
                  //   width: 1,
                  // )
                ),
                child: Container(
                  child: Container(
                    color:data[index]=="01" ? Colors.black:data[index]=="03" ? Colors.black:data[index]=="05" ? Colors.black:data[index]=="07" ? Colors.black:data[index]=="09" ? Colors.black:data[index]=="10" ? Colors.black:data[index]=="12" ? Colors.black:data[index]=="14" ? Colors.black:data[index]=="16" ? Colors.black:data[index]=="18" ? Colors.black:data[index]=="21" ? Colors.black:data[index]=="23" ? Colors.black:data[index]=="25" ? Colors.black:data[index]=="27" ? Colors.black:data[index]=="29" ? Colors.black:data[index]=="30" ? Colors.black:data[index]=="32" ? Colors.black:data[index]=="34" ? Colors.black:data[index]=="36" ? Colors.black:data[index]=="38" ? Colors.black:data[index]=="41" ? Colors.black:data[index]=="43" ? Colors.black:data[index]=="45" ? Colors.black:data[index]=="47" ? Colors.black:data[index]=="49" ? Colors.black:data[index]=="50" ? Colors.black:data[index]=="52" ? Colors.black:data[index]=="54" ? Colors.black:data[index]=="56" ? Colors.black:data[index]=="58" ? Colors.black:data[index]=="61" ? Colors.black:data[index]=="63" ? Colors.black:data[index]=="65" ? Colors.black:data[index]=="67" ? Colors.black:data[index]=="69" ? Colors.black:data[index]=="70" ? Colors.black:data[index]=="72" ? Colors.black:data[index]=="74" ? Colors.black:data[index]=="76" ? Colors.black:data[index]=="78" ? Colors.black:data[index]=="81" ? Colors.black:data[index]=="83" ? Colors.black:data[index]=="85" ? Colors.black:data[index]=="87" ? Colors.black:data[index]=="89" ? Colors.black:data[index]=="90" ? Colors.black:data[index]=="92" ? Colors.black:data[index]=="94" ? Colors.black:data[index]=="96" ? Colors.black:data[index]=="98"? Colors.black:
                    Color(0xfff87a11),
                    child: Center(child: Text(widget.nums+data[index].toString(),style: TextStyle(color: Colors.white,fontSize: 8), )),
                  ),
                ),
              ),
            ) ;
          }),
    );
  }
}
