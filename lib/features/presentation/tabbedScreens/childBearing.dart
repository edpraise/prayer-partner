import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ChildBearing extends StatefulWidget {
  @override
  _ChildBearingState createState() => _ChildBearingState();
}

class _ChildBearingState extends State<ChildBearing> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:0.0, bottom: 200),
     
      child: Container(
          child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: 
            [
              
              Container(
              height: MediaQuery.of(context).size.height/0.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle
                    ),
                    child: Image.asset('assets/images/4.png'),
                  ),
                   SizedBox(height: 20,),
                  Container(
                    height: 150,
                    width: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(''''Plead my cause, O Lord, with them that strive with me: fight against them that fight against me. 2 Take hold of shield and buckler, and stand up for mine help.3 Draw out also the spear, and stop the way against them that persecute me: say unto my soul, I am thy salvation.'''''),
                    ),
                  ),
                  // SizedBox(height: 20,),
                  Container(
                    height: 6,
                    width: MediaQuery.of(context).size.width/2,
                    decoration: BoxDecoration(
                      // color: Colors.black
                    ),
                  ),
                   SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left:90.0, right: 15),
                    child: Row(
                      children: [
                        Container(
                          height: 1,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.black
                          ),
                        ),
                        Text('Psalm 35'),
                         Container(
                          height: 1,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.black
                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Icon(Icons.favorite),
                  Icon(Icons.more_vert_outlined)

                ]
              ),
            ),
            // Container(
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage(\)
            //     )
            //   ),
            //   )
            ],
          );
        },
        itemCount: 10,
        itemWidth: 300.0,
        itemHeight: 500.0,
        layout: SwiperLayout.TINDER,
      )
        
          ),
    );
  }
}
