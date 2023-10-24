import 'package:flutter/material.dart';



class Tripal_fun_number_list extends StatefulWidget {
  const Tripal_fun_number_list({Key? key}) : super(key: key);

  @override
  State<Tripal_fun_number_list> createState() => _Tripal_fun_number_listState();
}

class _Tripal_fun_number_listState extends State<Tripal_fun_number_list> {

  static const List data= <int>[0,1,2,3,4,5,6,7,8,9,];
  final red = {1, 3, 5, 7, 9, 12, 14, 16, 18, 19, 21, 23, 25, 27, 30, 32, 34, 36};
  static const List batval= <String>['1','5','10','50','100','500','1000','5000'];
  static const List colord= <Color>[Color(0xff009316), Color(0xff0741d0), Color(0xff6c0303), Color(0xffd9b149), Color(0xff069a7f), Color(0xffbb1a82),
    Color(0xff9d4303), Color(0xff6581f8)
  ];


  @override
  Widget build(BuildContext context) {
    return  Container(

      height: 15,
      width: 221,
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
             int datad=data[index];
            return Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xffffd700),
                  width: 1,
                )
              ),
              child: Container(
                height: 20,
                width: 20,

                color: datad.isEven?Color(0xfff87a11):Colors.black,

                child: Center(child: Text(data[index].toString(),style: TextStyle(color: Colors.white,fontSize: 8), )),
              ),
            );
          }),
    );
  }
}

