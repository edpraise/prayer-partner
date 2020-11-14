import 'package:flutter/material.dart';

class TestimonyDetailsPage extends StatefulWidget {
  @override
  _TestimonyDetailsPageState createState() => _TestimonyDetailsPageState();
}

class _TestimonyDetailsPageState extends State<TestimonyDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF13131D),
      appBar: AppBar(
        backgroundColor: Color(0xFF13131D),
        elevation: 0.0,
        title: Text('Sarah Adams'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(0.05, 0.9),
                colors: [
                  Color(0xFF13131D),
                  Color(0xFF232A4E),
                  Color(0xFF13131D),
                ]),
          ),
        child: Stack(
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 2.5,
                width: MediaQuery.of(context).size.width,
                child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/3.jpg'))),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.favorite, color: Color(0xFFcc0000)),
                          Text('245', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
            Stack(children: [
              Positioned(
                bottom: 140,
                left: 20,
                child: Container(
                  height: 350,
                  width: MediaQuery.of(context).size.width / 1.12,
                  decoration: BoxDecoration(color: Color(0xFF1b213b),),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:25.0, left: 10),
                        child: Text('how God healed my son', style: TextStyle(color: Color(0xFFaba41d),fontSize: 15)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:20.0,top:10, right: 10),
                        child: Text(''''Houston Chronicle the next day and see my name in the scoring column and ask himself "Could this be my son I have not seen nor spoken with for almost 20 years?" As "fate" (God's providence) would have it, I got a phone call the next day at the athletic dorm and in response to my "Hello", the voice on the other end of the line said "This is your father"! Talk about a providential moment in time! You could have picked me up off of the floor! Twenty years, not even a whisper, not even knowing if he was still alive, and then the first time I hear his voice to hear the words "This is your father"!''''', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),),
                      )
                    ],
                  ),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
