import 'package:flutter/material.dart';



class RouletteLayout extends StatefulWidget {
  const RouletteLayout({Key? key}) : super(key: key);

  @override
  State<RouletteLayout> createState() => _RouletteLayoutState();
}

class _RouletteLayoutState extends State<RouletteLayout> {

 static const List data= <int>[0,1,2,3,4,5,6,7,8,9,];
  final red = {1, 3, 5, 7, 9, 12, 14, 16, 18, 19, 21, 23, 25, 27, 30, 32, 34, 36};
 static const List batval= <String>['1','5','10','50','100','500','1000','5000'];
 static const List colord= <Color>[Color(0xff009316), Color(0xff0741d0), Color(0xff6c0303), Color(0xffd9b149), Color(0xff069a7f), Color(0xffbb1a82),
   Color(0xff9d4303), Color(0xff6581f8)
 ];


  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 20),
      height: 75,
      width: 620,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
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
                                          child: Text(batval[index].toString()),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                            ),
                          ),
                        ));


              },
              child: Column(
                children: [

                  Container(
                    height: 60,
                    width: 60,

                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/fun/coin.png'),
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,

                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: CircleAvatar(
                            backgroundColor: Color(0xFFE8BE57),
                            radius: 10,
                            child: Text(data[index].toString(), style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ) ;
          }),
    );
  }
}

