import 'package:flutter/material.dart';
import 'package:prayer_partner/features/presentation/pages/sidemenueBar.dart';
import 'package:prayer_partner/features/presentation/pages/testimonyDetailsPage.dart';

class Connect extends StatefulWidget {
  @override
  _ConnectState createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  List<Map<String, dynamic>> testimonyList = [
    {
      'title': 'How God healed my son',
      'author': ' Sarah Adams',
      'content':
          'Those were words I never fathomed saying, yet how easily I was convinced by the world that Christ couldn’t be true. Everything around me told me to live for the moment, to just live for myself. And that is exactly what I did.',
// 'icon': 'Icons',
      'count': '234'
    },
    {
      'title': 'How God healed my son',
      'author': ' Sarah Adams',
      'content':
          'Those were words I never fathomed saying, yet how easily I was convinced by the world that Christ couldn’t be true. Everything around me told me to live for the moment, to just live for myself. And that is exactly what I did.',
// 'icon': 'Icons',
      'count': '234'
    },
    {
      'title': 'How God healed my son',
      'author': ' Sarah Adams',
      'content':
          'Those were words I never fathomed saying, yet how easily I was convinced by the world that Christ couldn’t be true. Everything around me told me to live for the moment, to just live for myself. And that is exactly what I did.',
// 'icon': 'Icons',
      'count': '234'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF13131D),
      appBar: AppBar(
        backgroundColor: Color(0xFF13131D),
        title: Text('Testimonies'),
        centerTitle: true,
        elevation: 0.0,
      ),
      drawer: MainDrawer(),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => TestimonyDetailsPage()));
        },
        child: Container(
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
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: testimonyList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TestimonyWidgets(
                          title: testimonyList[index]['title'],
                          author: testimonyList[index]['author'],
                          content: testimonyList[index]['content'],
                          count: testimonyList[index]['count'],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 1.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Center(child: Text('Share your testtimony'))),
            ],
          ),
        ),
      ),
    );

//
  }
}

class TestimonyWidgets extends StatelessWidget {
  final String title;
  final String author;
  final String count;
  final String content;

  const TestimonyWidgets({
    Key key,
    this.title,
    this.author,
    this.count,
    this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 190,
        width: 350,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color(0xFF13131D).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ], color: Color(0xFF232A4E), borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:12.0,left: 15),
                  child: Container(
                    child: Text(
                      title,
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0, top: 10),
                  child: Text(
                    author,
                    style: TextStyle(color: Colors.white),
                  ),
                ),


                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                      height: 100,
                      width: 200,
                      child: Text(content,
                          style: TextStyle(color: Colors.grey[400]),
                          overflow: TextOverflow.fade,
                          maxLines: 4)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:8.0, bottom: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.favorite, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        count,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 160,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: ClipRRect(
                  child: Image(image: AssetImage('assets/images/2.jpg')),
                ),
              ),
            )
          ],
        ));
  }
}
